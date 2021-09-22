import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

extension SafeParsingExtension on Map<String, dynamic>? {
  String safeString(String key, {String defaultValue = ''}) {
    final value = this?[key];

    return value ?? defaultValue;
  }

  bool safeBool(String key, {bool defaultValue = false}) {
    final value = this?[key];

    if (value == null) {
      return defaultValue;
    } else if (value is String) {
      return bool.fromEnvironment(value, defaultValue: defaultValue);
    }

    return value ?? defaultValue;
  }

  int safeInt(String key, {int defaultValue = 0}) {
    final value = this?[key];

    if (value == null)
      return defaultValue;
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

String fromJsonToString(dynamic json, {String defaultValue = ''}) {
  return json != null ? json.toString() : defaultValue;
}

int fromStringJsonToInt(dynamic json, {int defaultValue = 0}) {
  if (json == null) return defaultValue;

  if (json is String) {
    try {
      return int.parse(json);
    } on Exception catch (e) {
      return defaultValue;
    }
  }

  if (json is int) return json;
  return defaultValue;
}

bool fromBitrixBool(dynamic json) {
  if (json != null) {
    if (json is String) {
      if (json == 'Y') return true;
    }

    if (json is bool) return json;
  }

  return false;
}

String toBitrixBool(bool value) => value ? 'Y' : 'N';

class BitrixTimeConverter implements JsonConverter<DateTime?, String?> {
  const BitrixTimeConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json != null && json.trim().isNotEmpty) {
      return DateTime.parse(json);
    }
  }

  @override
  String? toJson(DateTime? object) {
    if (object != null) {
      final df = DateFormat('yyyy-MM-ddTHH:mm:ssZ');
      df.format(object);
    }
  }
}


