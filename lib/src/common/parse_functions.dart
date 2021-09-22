
import 'dart:convert';

import '../models/chat/chat_dialog.dart';
import '../models/department/department.dart';
import '../models/user/user.dart';

List<ChatDialog> parseRecentList(String body) {
  final data = jsonDecode(body) as Map<String, dynamic>;

  final result = data['result'];
  if (result != null) {
    final items = result['items'] as List;

    return List<ChatDialog>.from(items.map((e) => ChatDialog.fromJson(e)));
  }

  return [];
}

List<User> parseAllUsers(String body) {
  final data = jsonDecode(body) as Map<String, dynamic>;

  final result = data['result'];

  if (result != null) {
    final items = result as List;

    return List<User>.from(items.map((e) => User.fromJson(e)));
  }

  return [];
}

List<Department> parseAllDepartments(String body) {
  final data = jsonDecode(body) as Map<String, dynamic>;

  final result = data['result'];

  if (result != null) {
    final items = result as List;

    return List<Department>.from(items.map((e) => Department.fromJson(e)));
  }

  return [];
}