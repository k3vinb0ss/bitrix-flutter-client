import 'package:json_annotation/json_annotation.dart';

import '../../utils/parser.dart';
import 'chat_avatar.dart';
import 'chat_dialog_group.dart';
import 'chat_dialog_user.dart';
import 'chat_last_message.dart';

part 'chat_dialog.g.dart';

@JsonSerializable()
class ChatDialog {
  @JsonKey(fromJson: fromJsonToString)
  final String id;

  @JsonKey(name: 'chat_id')
  final int chatId;
  final String type;
  final ChatAvatar avatar;
  final String title;
  @JsonKey(name: 'message')
  final ChatLastMessage lastMessage;
  @JsonKey(defaultValue: 0)
  final int counter;
  final bool pinned;
  final bool unread;
  @JsonKey(name: 'date_update')
  final DateTime dateUpdate;
  final ChatDialogGroup? chat;
  final ChatDialogUser? user;

  ChatDialog(
      {required this.id,
      required this.chatId,
      required this.type,
      required this.avatar,
      required this.title,
      required this.lastMessage,
      required this.counter,
      required this.pinned,
      required this.unread,
      required this.dateUpdate,
      this.chat,
      this.user});

  factory ChatDialog.fromJson(Map<String, dynamic> json) =>
      _$ChatDialogFromJson(json);

  Map<String, dynamic> toJson() => _$ChatDialogToJson(this);

  @override
  String toString() {
    return 'ChatDialog{id: $id, chatId: $chatId, type: $type, avatar: $avatar,'
        ' title: $title, lastMessage: $lastMessage, counter: $counter,'
        ' pinned: $pinned, unread: $unread, dateUpdate: $dateUpdate,'
        ' chat: $chat, user: $user}';
  }
}
