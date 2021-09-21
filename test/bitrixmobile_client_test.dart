import 'package:flutter_test/flutter_test.dart';

import 'package:bitrixmobile_client/bitrixmobile_client.dart';

void main() {
  late final BitrixClient bitrixClient;
  setUp(() {
    bitrixClient = BitrixClient('http://demo.younetsi.com', ApiConfigurations(
        clientId: 'local.61486902ec2ef4.46048474',
        clientSecret: 'RE7pqLSqlo40nuPnAjZP4213kV6wi0T1kxWPNmviIGqR93EW5O'
    ));
  });

  test('test mobile checkout', () async {
    final response = await bitrixClient.authManagement.mobileCheckout(debugMobileConfigurations, 'sontt', 'ynsi@123');
    print(response.body);
  });

  test('test login', () async {
    final str = {'a': 'va', 'b': 'vb'}.entries.map((e) => e.toString()).join('&');
    print(str);
    // print(str.substring(0, str.length - 2));
  });

  test('parse request code from url', () async {
    final url = 'http://localhost:7000/api/bitrixmobile?code=dc6b49610057522300552a73000000420000032fd68551450eff30ebf9705ea0453f3a'
        '&state=&domain=demo.younetsi.com'
        '&member_id=24ec657c5efe23784db5b106838a7249'
        '&scope=im%2Cdisk%2Clog'
        '&server_domain=oauth.bitrix.info';
    final regex = RegExp(r'(code=)([\w]+)');
    final matches = regex.allMatches(url);

    expect(matches.length, greaterThan(0));
    print(matches.elementAt(0).group(2));
  });

  test('refresh token ', () async {
    await bitrixClient.authManagement.refreshToken();
  });
}
