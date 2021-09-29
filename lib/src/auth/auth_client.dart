import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart';

import '../../bitrixmobile_client.dart';
import '../http/http_client.dart';
import '../utils/common_utils.dart';

class AuthClient {
  final BitrixClient _bitrixClient;
  final String baseUrl;

  AuthClient(this._bitrixClient) : baseUrl = _bitrixClient.baseUrl;

  Future<Response> mobileCheckout(MobileConfigurations configurations, String username,
      String password) async {
    final signature = sha1.convert(
        utf8.encode(configurations.signatureKey + username + password));
    final url = _bitrixClient.baseUrl +
        '/mobile/?mobile_action=checkout'
            '&user_lang=vn&api_version=${configurations.apiVersion}&SIGNATURE=$signature';
    final headers = {
      'Authorization':
          'Basic ${base64.encode(utf8.encode('$username:$password'))}'
    };

    final response =
        await _bitrixClient.httpClient.get(BasicRequest(url, headers: headers));
    return response;
  }

  Future<Response> login(String requestCode, Map<String, String> cookies) async {
    const requestPermissions = 'im%2Cdisk%2Clog%2Ctask%2Cuser%2Centity%2Cmobile%2Cintranet';
    final url = _bitrixClient.baseUrl +
        '/oauth/token/?client_id=${_bitrixClient.apiConfigurations.clientId}'
            '&grant_type=authorization_code'
            '&client_secret=${_bitrixClient.apiConfigurations.clientSecret}'
            '&code=$requestCode'
            '&scope=$requestPermissions';

    print('[BitrixMobile]: $url, ${stringifyCookies(cookies)}');

    final response = await _bitrixClient.httpClient
        .get(BasicRequest(url, headers: {'Cookie': stringifyCookies(cookies)}));
    print('[BitrixMobile]: login response: ${response.body}');
    return response;
  }

  Future<Response> renewAccessToken(String refreshToken) async {
    final url =
        '$baseUrl/oauth/token/?client_id=${_bitrixClient.apiConfigurations.clientId}'
        '&grant_type=refresh_token'
        '&client_secret=${_bitrixClient.apiConfigurations.clientSecret}'
        '&refresh_token=$refreshToken';

    final response = await _bitrixClient.httpClient.get(BasicRequest(url));
    print('[BitrixMobile]: refreshToken response: ${response.body}');
    return response;
  }

  String? parseAccessCodeFromCallback(String urlCalback) {
    final regex = RegExp(r'(code=)([\w]+)');
    final matches = regex.allMatches(urlCalback);

    if (matches.isNotEmpty && matches.elementAt(0).groupCount >= 2) {
      return matches.elementAt(0).group(2);
    }
  }
}
