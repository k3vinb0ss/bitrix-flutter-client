import 'package:bitrixmobile_client/bitrixmobile_client.dart';
import 'package:bitrixmobile_client/src/auth.dart';
import 'package:bitrixmobile_client/src/http/http_client.dart';
import 'package:bitrixmobile_client/src/http/http_client_impl.dart';

class BitrixClient {
  late final String baseUrl;
  late final ApiConfigurations apiConfigurations;
  late final HttpClient httpClient;

  // features client
  late final AuthManagement authManagement;

  BitrixClient(this.baseUrl, this.apiConfigurations,
      {Map<String, String> headers = const {},
      Map<String, String> cookies = const {}}) {
    httpClient = HttpClientImpl(defaultHeaders: headers, cookies: cookies);
    final hostRegex = RegExp(r'https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]*');
    final validhost = hostRegex.hasMatch(baseUrl);

    if (!validhost) throw Exception('Uri is wrong format.');

    authManagement = AuthManagement(this);
  }
}
