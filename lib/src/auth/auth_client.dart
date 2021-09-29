import 'dart:convert';

import '../../bitrixmobile_client.dart';
import '../http/http_client.dart';
import '../models/common/mobile_checkout_response.dart';
import '../utils/common_utils.dart';

class AuthClient {
  final BitrixClient _bitrixClient;
  final HttpClient _httpClient;
  final String baseUrl;

  AuthClient(this._bitrixClient)
      : baseUrl = _bitrixClient.baseUrl,
        _httpClient = _bitrixClient.httpClient;

  Future mobileCheckout(String username, String password) async {
    final authToken = base64.encode(utf8.encode('$username:$password'));

    final checkoutReq = PostRequest('$baseUrl/mobile/?mobile_action=checkout',
        headers: {'Authorization': 'Basic $authToken'});

    final checkoutResponse = await _httpClient.post(checkoutReq);
    final strSetHeader = checkoutResponse.headers['set-cookie'] ?? '';

    final cookies = cookieFromSetCookieHeaders(strSetHeader);
    final data =
        MobileCheckoutResponse.fromJson(jsonDecode(checkoutResponse.body));

    final cookiesMap = <String, String>{};
    for (final c in cookies) {
      cookiesMap[c.name] = c.value;
    }

    _httpClient.addCookies(cookiesMap);
    _bitrixClient.setSessionId(data.sessionId);


    return null;
  }

// Future<Response> login(String requestCode, Map<String, String> cookies) async {
//   const requestPermissions = 'im%2Cdisk%2Clog%2Ctask%2Cuser%2Centity%2Cmobile%2Cintranet';
//   final url = _bitrixClient.baseUrl +
//       '/oauth/token/?client_id=${_bitrixClient.apiConfigurations.clientId}'
//           '&grant_type=authorization_code'
//           '&client_secret=${_bitrixClient.apiConfigurations.clientSecret}'
//           '&code=$requestCode'
//           '&scope=$requestPermissions';
//
//   print('[BitrixMobile]: $url, ${stringifyCookies(cookies)}');
//
//   final response = await _bitrixClient.httpClient
//       .get(BasicRequest(url, headers: {'Cookie': stringifyCookies(cookies)}));
//   print('[BitrixMobile]: login response: ${response.body}');
//   return response;
// }
//
// Future<Response> renewAccessToken(String refreshToken) async {
//   final url =
//       '$baseUrl/oauth/token/?client_id=${_bitrixClient.apiConfigurations.clientId}'
//       '&grant_type=refresh_token'
//       '&client_secret=${_bitrixClient.apiConfigurations.clientSecret}'
//       '&refresh_token=$refreshToken';
//
//   final response = await _bitrixClient.httpClient.get(BasicRequest(url));
//   print('[BitrixMobile]: refreshToken response: ${response.body}');
//   return response;
// }
//
// String? parseAccessCodeFromCallback(String urlCalback) {
//   final regex = RegExp(r'(code=)([\w]+)');
//   final matches = regex.allMatches(urlCalback);
//
//   if (matches.isNotEmpty && matches.elementAt(0).groupCount >= 2) {
//     return matches.elementAt(0).group(2);
//   }
// }
}
