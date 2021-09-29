
import 'dart:io';

String stringifyCookies(Map<String, String> cookies) =>
    cookies.entries.map((e) => '${e.key}=${e.value}').join('; ');

List<Cookie> cookieFromSetCookieHeaders(String setCookieStr) {
  final exp = RegExp(r'(?<=)(,)(?=[^;]+?=)');
  final cookies = setCookieStr.split(exp);

  return cookies.map((e) => Cookie.fromSetCookieValue(e)).toList();
}