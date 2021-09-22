extension SafeParsingExtension on Map<String, dynamic>? {
  String safeString(String key, {String defaultValue = ''}) {
    final value = this?[key];

    return value ?? defaultValue;
  }

  bool safeBool(String key, {bool defaultValue = false}) {
    final value = this?[key];

    if (value == null) {
      return defaultValue;
    }
    else if (value is String) {
      return bool.fromEnvironment(value, defaultValue: defaultValue);
    }

    return value ?? defaultValue;
  }

  int safeInt(String key, {int defaultValue = 0}) {
    final value = this?[key];

    if (value == null) return defaultValue;
    else if (value is String) {
      try {
        final intValue = int.parse(value);
        return intValue;
      } on Exception catch (e) {
        return defaultValue;
      }
    }

    return value ?? defaultValue;
  }
}

String fromJsonToString(dynamic json) {
  return json != null ? json.toString() : '';
}