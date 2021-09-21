import 'dart:convert';

import 'package:bitrixmobile_client/bitrixmobile_client.dart';
import 'package:bitrixmobile_client/src/http/http_client.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart';

import 'utils/common_utils.dart';

class AuthManagement {
  final BitrixClient _bitrixClient;
  final String baseUrl;

  AuthManagement(this._bitrixClient) : baseUrl = _bitrixClient.baseUrl;

  Future mobileCheckout(MobileConfigurations configurations, String username,
      String password) async {
    final signature = sha1.convert(
        utf8.encode(configurations.signatureKey + username + password));
    final url = _bitrixClient.baseUrl +
        '/mobile/?mobile_action=checkout'
            '&user_lang=vn&api_version=${configurations.apiVersion}&SIGNATURE=${signature}';
    final headers = {
      'Authorization':
          'Basic ${base64.encode(utf8.encode('$username:$password'))}'
    };

    final response =
        await _bitrixClient.httpClient.get(BasicRequest(url, headers: headers));
    return response;
  }

  Future login(String requestCode, Map<String, String> cookies) async {
    final requestPermissions = 'im%2Cdisk%2Clog';
    final url = _bitrixClient.baseUrl +
        '/oauth/token/?client_id=${_bitrixClient.apiConfigurations.clientId}'
            '&grant_type=authorization_code'
            '&client_secret=${_bitrixClient.apiConfigurations.clientSecret}'
            '&code=$requestCode'
            '&scope=$requestPermissions';

    print('[BitrixMobile]: ${url}, ${stringifyCookies(cookies)}');

    final response = await _bitrixClient.httpClient
        .get(BasicRequest(url, headers: {'Cookie': stringifyCookies(cookies)}));
  }

  Future refreshToken() async {
    final refreshToken =
        'db4071610057522300552a73000000420000030cc65f38ae37c01a7f627376664f4b15';
    final strCookie =
        'BITRIX_SM_TIME_ZONE=-420; PHPSESSID=VyfBFOSQ8vWgck9r6gsGBU0Vb1bvRTb4; BITRIX_SM_SALE_UID=0; BITRIX_SM_LOGIN=sontt; BITRIX_SM_SOUND_LOGIN_PLAYED=Y';

    final url =
        '$baseUrl/oauth/token/?client_id=${_bitrixClient.apiConfigurations.clientId}'
        '&grant_type=refresh_token'
        '&client_secret=${_bitrixClient.apiConfigurations.clientSecret}'
        '&refresh_token=$refreshToken';

    final response = await _bitrixClient.httpClient.get(BasicRequest(url, headers: {'Cookie': strCookie}));
    print('[BitrixMobile]: refreshToken response: ${response.body}');
  }
}

/*
local.61486902ec2ef4.46048474
RE7pqLSqlo40nuPnAjZP4213kV6wi0T1kxWPNmviIGqR93EW5O

refresh_token: e2f970610057522300552a73000000420000032756e84de42602403ae0bcd9fd50c419

{"access_token":"f27a49610057522300552a73000000420000030556980732784435420d54c3e22ae999","expires":1632205554,"expires_in":3600,"scope":"im,disk,log","domain":"demo.younetsi.com","server_endpoint":"https:\/\/oauth.bitrix.info\/rest\/","status":"L","client_endpoint":"https:\/\/demo.younetsi.com\/rest\/","member_id":"24ec657c5efe23784db5b106838a7249","user_id":66,"refresh_token":"e2f970610057522300552a73000000420000032756e84de42602403ae0bcd9fd50c419"}

https://demo.younetsi.com/oauth/authorize/?client_id=local.61486902ec2ef4.46048474&response_type=code&redirect_uri=http%3A%2F%2Flocalhost%3A70005

-> Redirect with request token
http://localhost:7000/api/bitrixmobile?code=dc6b49610057522300552a73000000420000032fd68551450eff30ebf9705ea0453f3a&state=&domain=demo.younetsi.com&member_id=24ec657c5efe23784db5b106838a7249&scope=im%2Cdisk%2Clog&server_domain=oauth.bitrix.info

-> Request access token
https://demo.younetsi.com/oauth/token/?client_id=local.61486902ec2ef4.46048474&grant_type=authorization_code&client_secret=RE7pqLSqlo40nuPnAjZP4213kV6wi0T1kxWPNmviIGqR93EW5O&redirect_uri=http%3A%2F%2Flocalhost%3A70005&code=f16c49610057522300552a730000004200000372697308cc5747334f9829be783166ba&scope=im%2Cdisk%2Clog

-> Request refreshing token
http://demo.younetsi.com/oauth/token/?client_id=local.61486902ec2ef4.46048474&grant_type=refresh_token&client_secret=RE7pqLSqlo40nuPnAjZP4213kV6wi0T1kxWPNmviIGqR93EW5O&redirect_uri=http%3A%2F%2Ftest.com%2Fbitrix%2Foauth%2Foauth_test.php&refresh_token=e2f970610057522300552a73000000420000032756e84de42602403ae0bcd9fd50c419
 */
