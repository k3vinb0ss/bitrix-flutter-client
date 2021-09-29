

void main() {
  // late final BitrixClient bitrixClient;
  //
  // setUp(() {
  //   bitrixClient = BitrixClient(
  //       'https://demo.younetsi.com', ApiConfigurations(
  //       clientId: 'local.61486902ec2ef4.46048474',
  //       clientSecret: 'RE7pqLSqlo40nuPnAjZP4213kV6wi0T1kxWPNmviIGqR93EW5O'
  //   )
  //   );
  //
  //   bitrixClient.httpClient.addCookies({
  //     'PHPSESSID': 'tIBAmDASSxpa2iAmP74QxBVrgnflvyi9',
  //     'BITRIX_SM_LOGIN': 'sontt'
  //   });
  // });
  //
  //
  // test('parse request code from url', () async {
  //   const url = 'http://localhost:7000/api/bitrixmobile?'
  //       'code=4f2f51610057522300552a73000000420000034ac6007a6c0e42a626edbcb5842bf2ff'
  //       '&state=&domain=demo.younetsi.com'
  //       '&member_id=24ec657c5efe23784db5b106838a7249'
  //       '&scope=im%2Cdisk%2Clog%2Ctask%2Cuser%2Centity%2Cmobile%2Cintranet'
  //       '&server_domain=oauth.bitrix.info';
  //   final accessCode = bitrixClient.authClient.parseAccessCodeFromCallback(url);
  //   expect(accessCode, isNotNull);
  //   print(accessCode);
  // });
  //
  // test('test get access token', () async {
  //   // request access code
  //   final requestAccessUrl = '${bitrixClient.baseUrl}/oauth/authorize/'
  //       '?client_id=${bitrixClient.apiConfigurations.clientId}'
  //       '&response_type=code'
  //       '&redirect_uri=http%3A%2F%2Flocalhost%3A7000';
  //
  //   final requestAccessReq = GetRequest(
  //       requestAccessUrl, followRedirect: false);
  //   final requestAccessCodeResponse = await bitrixClient.httpClient.send(
  //       requestAccessReq);
  //   final callBackUrl = requestAccessCodeResponse.headers['location'];
  //
  //   final accessCode = bitrixClient.authClient.parseAccessCodeFromCallback(
  //       callBackUrl ?? '');
  //   expect(accessCode, isNotEmpty);
  //   print('Access Code: $accessCode}');
  //
  //
  //   const scope = 'im%2Cdisk%2Clog%2Cuser%2Centity%2Cmobile%2Cpull_channel%2Cpull';
  //
  //   // request access token
  //   final requestTokenUrl = '${bitrixClient.baseUrl}/oauth/token/'
  //       '?client_id=${bitrixClient.apiConfigurations.clientId}'
  //       '&grant_type=authorization_code'
  //       '&client_secret=${bitrixClient.apiConfigurations.clientSecret}'
  //       '&redirect_uri=http%3A%2F%2Flocalhost%3A7000'
  //       '&code=$accessCode'
  //       '&server_domain=oauth.bitrix.info'
  //       '&scope=$scope';
  //
  //   final requestToken = GetRequest(requestTokenUrl);
  //   final requestTokenResponse = await bitrixClient.httpClient.get(
  //       requestToken);
  //   expect(requestTokenResponse.statusCode, 200);
  //
  //   final dataResponse = jsonDecode(requestTokenResponse.body) as Map<
  //       String,
  //       dynamic>;
  //
  //   for (final entry in dataResponse.entries) {
  //     print('${entry.key} = ${entry.value}');
  //   }
  // });
  //
  // test('renew access token from refresh_token', () async {
  //   final refreshToken = '51d478610057522300552a730000004200000390dc65001d2860481114556f9f99d3bf';
  //   final response = await bitrixClient.authClient.renewAccessToken(refreshToken);
  //   expect(response.statusCode, 200);
  //
  //   final dataResponse = jsonDecode(response.body) as Map<
  //       String,
  //       dynamic>;
  //
  //   for (final entry in dataResponse.entries) {
  //     print('${entry.key} = ${entry.value}');
  //   }
  // });
}
