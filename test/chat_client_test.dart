import 'dart:convert';
import 'dart:io';

import 'package:bitrixmobile_client/bitrixmobile_client.dart';
import 'package:bitrixmobile_client/src/commands/create_chat.dart';
import 'package:bitrixmobile_client/src/commands/recent_list.dart';
import 'package:bitrixmobile_client/src/common/result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  BitrixClient bitrixClient = BitrixClient(
      'https://demo.younetsi.com/rest/66/vtmrbpt43guty853',
      ApiConfigurations(
          clientId: 'local.61486902ec2ef4.46048474',
          clientSecret: 'RE7pqLSqlo40nuPnAjZP4213kV6wi0T1kxWPNmviIGqR93EW5O'));

  test('test recent list', () async {
    final apiCommand = RecentListCommand();
    final result = await bitrixClient.chatClient.getRecentList(apiCommand);

    expect(result.status, ResultStatus.success);
    expect(result.data, isNotEmpty);

    print(result.data!.first);
  });

  test('test create basic chat', () async {
    final req = CreateChatCommand(userIds: [78]);
    final result = await bitrixClient.chatClient.createChat(req);

    expect(result.status, ResultStatus.success);
    print(result);
  });

  test('test create empty user chat', () async {
    final req = CreateChatCommand(userIds: []);
    final result = await bitrixClient.chatClient.createChat(req);

    expect(result.status, ResultStatus.error);
    print(result);
  });

  test('create chat with title', () async {
    final req = CreateChatCommand(
        userIds: [78],
        title: 'ngon bo',
        greetingMessage: 'Adongseryo');
    final result = await bitrixClient.chatClient.createChat(req);

    expect(result.status, ResultStatus.success);
    print(result);
  });

  test('create chat with avatar', () async {
    final icon = File('test/test_resource/compres_check_icon.png');
    final data = icon.readAsBytesSync();

    final req = CreateChatCommand(
        userIds: [78],
        title: 'chat with image',
        base64ImageAvatar: base64Encode(data),
        greetingMessage: 'Adongseryo');
    final result = await bitrixClient.chatClient.createChat(req);

    print(result);
    expect(result.status, ResultStatus.success);
  });
}
