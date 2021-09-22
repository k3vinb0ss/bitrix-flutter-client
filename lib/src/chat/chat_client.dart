import '../common/parse_functions.dart';
import '../api_command.dart';
import '../client.dart';
import '../common/result.dart';
import '../http/http_client.dart';
import '../models/chat/chat_dialog.dart';

abstract class ChatClient {
  Future<Result<List<ChatDialog>>> getRecentList(RecentListCommand command);
}

class ChatClientImpl extends ChatClient {
  final BitrixClient _client;
  final HttpClient httpClient;
  final String baseUrl;

  ChatClientImpl(this._client)
      : baseUrl = _client.baseUrl,
        httpClient = _client.httpClient;

  @override
  Future<Result<List<ChatDialog>>> getRecentList(RecentListCommand command) async {
    final req = BasicRequest('$baseUrl/${command.getQuery}');
    final response = await httpClient.get(req);

    if (response.statusCode == 200) {
      final recentList = parseRecentList(response.body);
      return Result.success(recentList);
    } else {
      return Result.error(400, 'Something went wrong');
    }
  }
}
