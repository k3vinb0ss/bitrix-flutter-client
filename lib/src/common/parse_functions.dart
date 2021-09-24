import 'dart:convert';

import 'package:bitrixmobile_client/src/models/message/bitrix_message.dart';

import '../models/chat/chat_dialog.dart';
import '../models/department/department.dart';
import '../models/disk/bitrix_file.dart';
import '../models/user/chat_user.dart';
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

List<ChatUser> parseChatParticipants(String body) {
  final data = jsonDecode(body) as Map<String, dynamic>;

  final result = data['result'];

  if (result != null) {
    final items = result as List;

    return List<ChatUser>.from(items.map((e) => ChatUser.fromJson(e)));
  }

  return [];
}

List<BitrixMessage> parseChatMessages(String body) {
  final data = jsonDecode(body) as Map<String, dynamic>;
  final result = data['result'];

  if (result != null) {
    var users = <ChatUser>[];
    var files = <BitrixFile>[];

    if (result['users'] != null) {
      users =
          (result['users'] as List).map((e) => ChatUser.fromJson(e)).toList();
    }

    if (result['files'] != null) {
      files =
          (result['files'] as List).map((e) => BitrixFile.fromJson(e)).toList();
    }

    if (result['messages'] != null) {
      return (result['messages'] as List)
          .map((e) =>
              BitrixMessage.fromJson(e, allUsers: users, allFiles: files))
          .toList();
    }
  }

  return [];
}
