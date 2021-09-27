import 'package:http/http.dart';

abstract class HttpClient {
  Future<Response> get(BasicRequest req);

  Future<Response> post(BasicRequest req);

  void addHeaders(Map<String, String> headers);

  void addCookies(Map<String, String> mapCookies);

  Future<StreamedResponse> send(BasicRequest req);
}

enum RequestMethod { get, post }

extension RequestMethodExt on RequestMethod {
  String get name {
    switch (this) {
      case RequestMethod.get:
        return 'get';
      case RequestMethod.post:
        return 'post';
    }
  }
}

class BasicRequest {
  late final String url;
  final RequestMethod method;
  final Map<String, String> headers;
  final Map<String, String> cookies;
  final bool followRedirect;

  BasicRequest(this.url,
      {this.headers = const {},
      this.cookies = const {},
      this.followRedirect = true,
      this.method = RequestMethod.get});
}

class GetRequest extends BasicRequest {
  final Map<String, String> params;

  GetRequest(String url,
      {this.params = const {},
      Map<String, String> headers = const {},
      Map<String, String> cookies = const {},
      bool followRedirect = true})
      : super(url,
            headers: headers, cookies: cookies, followRedirect: followRedirect);
}

class PostRequest extends BasicRequest {
  final Map<String, dynamic> body;

  PostRequest(String url,
      {this.body = const {},
      Map<String, String> headers = const {},
      Map<String, String> cookies = const {},
      bool followRedirect = true})
      : super(url,
            headers: headers,
            cookies: cookies,
            followRedirect: followRedirect,
            method: RequestMethod.post);
}
