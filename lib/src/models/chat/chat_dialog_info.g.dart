// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dialog_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatDialogInfo _$ChatDialogInfoFromJson(Map<String, dynamic> json) =>
    ChatDialogInfo(
      id: fromJsonToString(json['id']),
      dialogId: json['dialog_id'] as String,
      name: json['name'] as String,
      owner: json['owner'] as int,
      avatar: json['avatar'] as String?,
      color: json['color'] as String?,
      type: json['type'] as String,
      counter: json['counter'] as int? ?? 0,
      userCounter: json['user_counter'] as int? ?? 0,
      messageCount: json['message_count'] as int? ?? 0,
      unreadId: json['unread_id'] as int?,
      lastMessageId: json['last_message_id'] as int?,
      diskFolderId: json['disk_folder_id'] as int?,
      dateCreated: DateTime.parse(json['date_create'] as String),
      messageType: json['message_type'] as String?,
      readedList: (json['readed_list'] as List<dynamic>?)
              ?.map((e) => ReadedItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ChatDialogInfoToJson(ChatDialogInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dialog_id': instance.dialogId,
      'name': instance.name,
      'owner': instance.owner,
      'avatar': instance.avatar,
      'color': instance.color,
      'type': instance.type,
      'counter': instance.counter,
      'user_counter': instance.userCounter,
      'message_count': instance.messageCount,
      'unread_id': instance.unreadId,
      'last_message_id': instance.lastMessageId,
      'disk_folder_id': instance.diskFolderId,
      'date_create': instance.dateCreated.toIso8601String(),
      'message_type': instance.messageType,
      'readed_list': instance.readedList,
    };
