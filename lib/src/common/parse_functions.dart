
import 'dart:convert';
import '../models/chat/chat_dialog.dart';

List<ChatDialog> parseRecentList(String body) {
  final data = jsonDecode(body) as Map<String, dynamic>;

  final result = data['result'];
  if (result != null) {
    final items = result['items'] as List;

    return List<ChatDialog>.from(items.map((e) => ChatDialog.fromJson(e)));
  }

  return [];
}