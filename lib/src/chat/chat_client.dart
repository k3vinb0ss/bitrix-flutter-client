import 'dart:convert';

import 'package:bitrixmobile_client/src/commands/create_chat.dart';
import 'package:bitrixmobile_client/src/common/result_codes.dart';
import 'package:flutter/foundation.dart';

import '../client.dart';
import '../commands/recent_list.dart';
import '../common/parse_functions.dart';
import '../common/result.dart';
import '../http/http_client.dart';
import '../models/chat/chat_dialog.dart';

abstract class ChatClient {
  Future<Result<List<ChatDialog>>> getRecentList(RecentListCommand command);

  /// Return create chat id
  Future<Result<int>> createChat(CreateChatCommand command);
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
      return Result.error(response.statusCode, message: 'Something went wrong');
    }
  }

  @override
  Future<Result<int>> createChat(CreateChatCommand command) async {
    if (command.userIds.isEmpty) {
      return Result.error(ERROR_EMPTY_USERS);
    }

    final req =
        PostRequest('$baseUrl/${command.getQuery}', body: command.getParams);
    final response = await httpClient.post(req);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      return Result.success(data['result'] as int);
    } else {
      return Result.error(response.statusCode);
    }
  }
}
