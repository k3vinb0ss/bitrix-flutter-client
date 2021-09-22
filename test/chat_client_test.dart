
import 'package:bitrixmobile_client/bitrixmobile_client.dart';
import 'package:bitrixmobile_client/src/commands/recent_list.dart';
import 'package:bitrixmobile_client/src/common/result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  BitrixClient bitrixClient = BitrixClient(
      'https://demo.younetsi.com/rest/66/vtmrbpt43guty853', ApiConfigurations(
      clientId: 'local.61486902ec2ef4.46048474',
      clientSecret: 'RE7pqLSqlo40nuPnAjZP4213kV6wi0T1kxWPNmviIGqR93EW5O'
  ));

  test('test recent list', () async {
    final apiCommand = RecentListCommand();
    final result = await bitrixClient.chatClient.getRecentList(apiCommand);

    expect(result.status, ResultStatus.success);
    expect(result.data, isNotEmpty);

    print(result.data!.first);
  });
}