import 'dart:convert';

import 'package:bitrixmobile_client/bitrixmobile_client.dart';
import 'package:crypto/crypto.dart';

class AuthManagement {
  final BitrixClient _bitrixClient;

  const AuthManagement(this._bitrixClient);

  login(Configurations configurations, String username, String password) {
    final signature = sha1.convert(utf8.encode(configurations.signatureKey + username + password));
    final url =
        'https://demo.younetsi.com/mobile/?mobile_action=checkout'
        '&user_lang=vn&api_version=${configurations.apiVersion}&SIGNATURE=${signature}';
    final headers = {
      'Authorization': 'Basic ${base64.encode(utf8.encode('$username:$password'))}'
    };
  }
}


/*
local.61486902ec2ef4.46048474
RE7pqLSqlo40nuPnAjZP4213kV6wi0T1kxWPNmviIGqR93EW5O

https://demo.younetsi.com/oauth/authorize/?client_id=local.61486902ec2ef4.46048474&response_type=code&redirect_uri=http%3A%2F%2Flocalhost%3A70005

->
http://localhost:7000/api/bitrixmobile?code=826c48610057522300552a7300000042000003cda2416cd5ce3c5011e85e61e866d721&state=&domain=demo.younetsi.com&member_id=24ec657c5efe23784db5b106838a7249&scope=im%2Cdisk%2Clog&server_domain=oauth.bitrix.info


https://demo.younetsi.com/oauth/token/?client_id=local.61486902ec2ef4.46048474&grant_type=authorization_code&client_secret=RE7pqLSqlo40nuPnAjZP4213kV6wi0T1kxWPNmviIGqR93EW5O&code=e96e48610057522300552a730000004200000310462d5dafd0b0db1350a028beb48ee3&scope=im%2Cdisk%2Clog

 */