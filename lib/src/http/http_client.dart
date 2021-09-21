import 'package:http/http.dart';

abstract class HttpClient {
  Future<Response> get(BasicRequest req);
  Future<Response> post(BasicRequest req);
}

class BasicRequest {
  late final String url;
  final Map<String, String> headers;
  final Map<String, String> cookies;

  BasicRequest(this.url, {this.headers = const {}, this.cookies = const {}});
}

class GetRequest extends BasicRequest {
  final Map<String, String> params;

  GetRequest(String url,
      {
      this.params = const {},
      Map<String, String> headers = const {},
      Map<String, String> cookies = const {}})
      : super(url, headers: headers, cookies: cookies);
}

class PostRequest extends BasicRequest {
  final Map<String, dynamic> body;

  PostRequest(String url,
      {
        this.body = const {},
        Map<String, String> headers = const {},
        Map<String, String> cookies = const {}})
      : super(url, headers: headers, cookies: cookies);
}