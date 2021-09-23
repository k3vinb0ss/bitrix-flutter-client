import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../client.dart';
import '../commands/chat_dialog_get.dart';
import '../commands/create_chat.dart';
import '../commands/dialog_users_get.dart';
import '../commands/recent_list.dart';
import '../common/parse_functions.dart';
import '../common/result.dart';
import '../common/result_codes.dart';
import '../http/http_client.dart';
import '../models/chat/chat_dialog.dart';
import '../models/chat/chat_dialog_info.dart';
import '../models/user/chat_user.dart';

abstract class ChatClient {
  Future<Result<List<ChatDialog>>> getRecentList(RecentListCommand command);

  /// Return create chat id
  Future<Result<int>> createChat(CreateChatCommand command);

  Future<Result<ChatDialogInfo>> getDialogInfo(DialogGetCommand command);

  Future<Result<List<ChatUser>>> getChatParticipants(DialogUsersGetCommand command);
}

class ChatClientImpl extends ChatClient {
  final BitrixClient _client;
  final HttpClient httpClient;
  final String baseUrl;

  ChatClientImpl(this._client)
      : baseUrl = _client.baseUrl,
        httpClient = _client.httpClient;

  @override
  Future<Result<List<ChatDialog>>> getRecentList(
      RecentListCommand command) async {
    final req = BasicRequest('$baseUrl/${command.getQuery}');
    final response = await httpClient.get(req);

    if (response.statusCode == 200) {
      final recentList = await compute(parseRecentList, response.body);
      return Result.success(recentList);
    } else {
      return Result.error(response.statusCode, message: response.body);
    }
  }

  @override
  Future<Result<int>> createChat(CreateChatCommand command) async {
    if (command.userIds.isEmpty) {
      return Result.error(ERR_WRONG_INPUT, message: 'User ids empty');
    }

    final req =
        PostRequest('$baseUrl/${command.getQuery}', body: command.getParams);
    final response = await httpClient.post(req);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      return Result.success(data['result'] as int);
    } else {
      return Result.error(response.statusCode, message: response.body);
    }
  }

  @override
  Future<Result<ChatDialogInfo>> getDialogInfo(DialogGetCommand command) async {
    if (command.chatId.isEmpty) {
      return Result.error(ERR_WRONG_INPUT, message: 'chat id empty');
    }

    final req = BasicRequest('$baseUrl/${command.getQuery}');
    final response = await httpClient.get(req);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      return Result.success(ChatDialogInfo.fromJson(data['result']));
    } else {
      return Result.error(response.statusCode, message: response.body);
    }
  }

  @override
  Future<Result<List<ChatUser>>> getChatParticipants(DialogUsersGetCommand command) async {
    if (command.chatId.isEmpty) {
      return Result.error(ERR_WRONG_INPUT, message: 'chat id empty');
    }

    final req = BasicRequest('$baseUrl/${command.getQuery}');
    final response = await httpClient.get(req);

    if (response.statusCode == 200) {
      final participants = await compute(parseChatParticipants, response.body);
      return Result.success(participants);
    } else {
      return Result.error(response.statusCode, message: response.body);
    }
  }
}
