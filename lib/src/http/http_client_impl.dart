import 'dart:convert';

import 'package:http/http.dart';

import '../utils/common_utils.dart';
import 'http_client.dart';

class HttpClientImpl extends HttpClient {
  late final Client _httpClient;
  late Map<String, String> defaultHeaders;
  late Map<String, String> defaultCookies;

  HttpClientImpl({this.defaultHeaders = const {}, this.defaultCookies = const {}}) {
    _httpClient = Client();
  }

  @override
  Future<Response> get(BasicRequest req) {
    var url = req.url;

    if (req is GetRequest) {
      // creating query params
      final queryString =
          req.params.entries.map((e) => '${e.key}=${e.value}').join('&');
      url = '$url${req.params.isNotEmpty ? '?' : ''}$queryString';
    }

    // merge cookies
    var mergedCookies = {...defaultCookies, ...req.cookies};

    // merge headers
    var mergedHeaders = {
      ...defaultHeaders,
      ...req.headers,
      ...{'Cookie': stringifyCookies(mergedCookies)}
    };

    return _httpClient.get(Uri.parse(Uri.encodeFull(url)),
        headers: mergedHeaders);
  }

  @override
  Future<Response> post(BasicRequest req) {
    // merge cookies
    var mergedCookies = {...defaultCookies, ...req.cookies};

    // merge headers
    var mergedHeaders = {
      ...defaultHeaders,
      ...req.headers,
      ...{'Cookie': stringifyCookies(mergedCookies)}
    };

    return _httpClient.post(Uri.parse(req.url),
        headers: mergedHeaders,
        body: (req is PostRequest) ? req.body : {},
        encoding: Encoding.getByName("utf-8"));
  }

  @override
  void addCookies(Map<String, String> mapCookies) {
    defaultCookies = {...defaultCookies, ...mapCookies};
  }

  @override
  void addHeaders(Map<String, String> headers) {
    defaultHeaders = {...defaultHeaders, ...headers};
  }

  @override
  Future<StreamedResponse> send(BasicRequest req) {
    final httpReq = Request(req.method.name, Uri.parse(req.url));
    httpReq.followRedirects = req.followRedirect;

    // merge cookies
    var mergedCookies = {...defaultCookies, ...req.cookies};

    // merge headers
    var mergedHeaders = {
      ...defaultHeaders,
      ...req.headers,
      ...{'Cookie': stringifyCookies(mergedCookies)}
    };

    httpReq.headers.addAll(mergedHeaders);
    return _httpClient.send(httpReq);
  }
}
