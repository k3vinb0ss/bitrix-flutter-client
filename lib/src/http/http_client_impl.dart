import 'dart:convert';

import 'package:bitrixmobile_client/src/utils/common_utils.dart';
import 'package:http/http.dart';

import 'http_client.dart';

class HttpClientImpl extends HttpClient {
  late final Client _httpClient;
  late final Map<String, String> defaultHeaders;
  late final Map<String, String> cookies;

  HttpClientImpl({this.defaultHeaders = const {}, this.cookies = const {}}) {
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
    var mergedCookies = {...cookies, ...req.cookies};

    // merge headers
    var mergedHeaders = {
      ...defaultHeaders,
      ...req.headers,
      ...{'Cookie': stringifyCookies(mergedCookies)}
    };

    return _httpClient.get(Uri.parse(url), headers: mergedHeaders);
  }

  @override
  Future<Response> post(BasicRequest req) {
    // merge cookies
    var mergedCookies = {...cookies, ...req.cookies};

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
}
