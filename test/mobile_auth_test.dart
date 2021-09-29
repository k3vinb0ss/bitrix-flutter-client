import 'dart:convert';

import 'package:bitrixmobile_client/bitrixmobile_client.dart';
import 'package:bitrixmobile_client/src/http/http_client.dart';
import 'package:bitrixmobile_client/src/models/common/mobile_checkout_response.dart';
import 'package:bitrixmobile_client/src/utils/common_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const baseUrl = 'https://intranet.younetco.com';
  final bitrixClient = BitrixClient(baseUrl);
  final httpClient = bitrixClient.httpClient;

  test('mobile checkout', () async {
    final checkoutReq = PostRequest(
        '$baseUrl/mobile/?mobile_action=checkout',
        headers: {
          'Authorization': 'Basic c29udHQ6c3Vkbzg4OTA='
        });

    final checkoutResponse = await httpClient.post(checkoutReq);
    final strSetHeader = checkoutResponse.headers['set-cookie'] ?? '';

    final cookies = cookieFromSetCookieHeaders(strSetHeader);
    final data = MobileCheckoutResponse.fromJson(jsonDecode(checkoutResponse.body));

    final cookiesMap = <String, String>{};
    for (final c in cookies) {
      cookiesMap[c.name] = c.value;
    }

    httpClient.addCookies(cookiesMap);

    const url = '$baseUrl/rest/im.recent.list.json';
    final recentListReq = PostRequest(url, body: {
      'bx_mobile': 'Y',
      'bx_mobile_background': 'N',
      'sessid': data.sessionId
    });
    final recentListResponse = await httpClient.post(recentListReq);
    print(recentListResponse.body);
  });

}
