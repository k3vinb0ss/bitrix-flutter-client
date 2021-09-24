import 'dart:convert';

import '../../constants.dart';
import '../../extensions/extensions.dart';
import '../../utils/parser.dart';
import '../disk/bitrix_file.dart';
import '../user/chat_user.dart';

class BitrixMessage {
  final int id;
  final int chatId;
  final int authorId;
  final DateTime date;
  final String text;
  final bool unread;
  final Map<String, dynamic>? params;
  final List<ChatUser> users;
  final BitrixFile? file;

  BitrixMessage(
      {required this.id,
      required this.chatId,
      required this.authorId,
      required this.date,
      required this.text,
      this.unread = false,
      this.params = const {},
      this.users = const [],
      this.file
      });

  factory BitrixMessage.fromJson(Map<String, dynamic> json, {
    List<ChatUser> allUsers = const [],
    List<BitrixFile> allFiles = const  []
} ) {
    final id = json.safeInt('id');
    final chatId = json.safeInt('chat_id');
    final authorId = json.safeInt('author_id');
    final date = bitrixDateFormat.parse(json['date']);
    final text = json.safeString('text');
    final unread = json.safeBool('unread');
    final params = json['params'];
    var users = <ChatUser>[];
    BitrixFile? file;

    if (params != null) {
      if (params['FILE_ID'] != null) {
        try {
          final fileIds = params['FILE_ID'] as List;
          file = allFiles.where((f) => f.id == fileIds.first).firstItem;
        } on Exception catch (_) {}
      }
    }

    return BitrixMessage(
        id: id,
        chatId: chatId,
        authorId: authorId,
        date: date,
        text: text,
        unread: unread,
        params: params,
        users: users,
        file: file
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'chat_id': chatId,
        'author_id': authorId,
        'date': bitrixDateFormat.format(date),
        'text': text,
        'unread': unread,
        'params': jsonEncode(params),
        'users': users.map((e) => e.toJson()),
        'file': file != null ? file!.toJson() : null
      };

  @override
  String toString() {
    return 'BitrixMessage{id: $id, chatId: $chatId, authorId: $authorId,'
        ' date: $date, text: $text, unread: $unread, params: $params,'
        ' users: $users, file: $file}';
  }

  /// return id of users who liked this message
  List<int> get likes {
    final ids = params?['LIKE'];
    if (ids != null) {
      return ids.cast<int>();
    }

    return [];
  }
}
