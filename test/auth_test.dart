import 'package:flutter_test/flutter_test.dart';

import 'package:bitrixmobile_client/bitrixmobile_client.dart';

void main() {
  late final BitrixClient bitrixClient;

  setUp(() {
    bitrixClient = BitrixClient('https://demo.younetsi.com/rest/66/vtmrbpt43guty853', ApiConfigurations(
        clientId: 'local.61486902ec2ef4.46048474',
        clientSecret: 'RE7pqLSqlo40nuPnAjZP4213kV6wi0T1kxWPNmviIGqR93EW5O'
    ));
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
    expect(matches.elementAt(0).group(2), isNotEmpty);
  });

  test('refresh token ', () async {
    final response = await bitrixClient.authClient.refreshToken(
      'db4071610057522300552a73000000420000030cc65f38ae37c01a7f627376664f4b15',
        'BITRIX_SM_TIME_ZONE=-420; PHPSESSID=VyfBFOSQ8vWgck9r6gsGBU0Vb1bvRTb4; BITRIX_SM_SALE_UID=0; BITRIX_SM_LOGIN=sontt; BITRIX_SM_SOUND_LOGIN_PLAYED=Y'
    );

    expect(response.statusCode, 200);
  });
}
