
import 'package:json_annotation/json_annotation.dart';

import '../../utils/parser.dart';
import 'readed_item.dart';

part 'chat_dialog_info.g.dart';

@JsonSerializable()
@BitrixTimeConverter()
class ChatDialogInfo {
  @JsonKey(fromJson: fromJsonToString)
  final String id;
  @JsonKey(name: 'dialog_id')
  final String dialogId;
  final String name;
  final int owner;
  final String? avatar;
  final String? color;
  final String type;
  @JsonKey(defaultValue: 0)
  final int counter;
  @JsonKey(name: 'user_counter', defaultValue: 0)
  final int userCounter;
  @JsonKey(name: 'message_count', defaultValue: 0)
  final int messageCount;
  @JsonKey(name: 'unread_id')
  final int? unreadId;
  @JsonKey(name: 'last_message_id')
  final int? lastMessageId;
  @JsonKey(name: 'disk_folder_id')
  final int? diskFolderId;
  @JsonKey(name: 'date_create')
  final DateTime dateCreated;
  @JsonKey(name: 'message_type')
  final String? messageType;
  @JsonKey(name: 'readed_list')
  final List<ReadedItem> readedList;

  ChatDialogInfo(
      {
        required this.id,
      required this.dialogId,
      required this.name,
      required this.owner,
      this.avatar,
      this.color,
      required this.type,
      required this.counter,
      required this.userCounter,
      required this.messageCount,
      this.unreadId,
      this.lastMessageId,
      this.diskFolderId,
      required this.dateCreated,
      this.messageType,
      this.readedList = const []});

  factory ChatDialogInfo.fromJson(Map<String, dynamic> json) => _$ChatDialogInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ChatDialogInfoToJson(this);

  @override
  String toString() {
    return 'ChatDialogInfo{id: $id, dialogId: $dialogId, name: $name,'
        ' owner: $owner, avatar: $avatar, color: $color, type: $type,'
        ' counter: $counter, userCounter: $userCounter, messageCount: $messageCount,'
        ' unreadId: $unreadId, lastMessageId: $lastMessageId,'
        ' diskFolderId: $diskFolderId, dateCreated: $dateCreated,'
        ' messageType: $messageType, readedList: $readedList}';
  }
}