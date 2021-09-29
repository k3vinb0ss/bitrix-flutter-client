import '../bitrixmobile_client.dart';
import 'auth/auth_client.dart';
import 'chat/chat_client.dart';
import 'http/http_client.dart';
import 'http/http_client_impl.dart';
import 'user/user_client.dart';

class BitrixClient {
  late final String baseUrl;
  final HttpClient httpClient;
  String? _sessionId;

  // features client
  late final AuthClient authClient;
  late final ChatClient chatClient;
  late final UserClient userClient;

  BitrixClient(String baseUrl,
      {Map<String, String> headers = const {},
      Map<String, String> cookies = const {},
      String? sessionId
      })
      : httpClient = HttpClientImpl(defaultHeaders: headers, defaultCookies: cookies) {
    _sessionId = sessionId;

    if (!baseUrl.endsWith('/')) {
      this.baseUrl = baseUrl;
    } else {
      this.baseUrl = baseUrl + '/';
    }

    final hostRegex = RegExp(r'https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]*');
    final validhost = hostRegex.hasMatch(baseUrl);

    if (!validhost) throw Exception('Uri is wrong format.');

    authClient = AuthClient(this);
    chatClient = ChatClientImpl(this);
    userClient = UserClientImpl(this);
  }

  void setSessionId(String sessionId) {
    _sessionId = sessionId;
  }

  String? get sessionId => _sessionId;
}
