// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dialog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatDialog _$ChatDialogFromJson(Map<String, dynamic> json) => ChatDialog(
      id: fromJsonToString(json['id']),
      chatId: json['chat_id'] as int,
      type: json['type'] as String,
      avatar: ChatAvatar.fromJson(json['avatar'] as Map<String, dynamic>),
      title: json['title'] as String,
      lastMessage:
          ChatLastMessage.fromJson(json['message'] as Map<String, dynamic>),
      counter: json['counter'] as int? ?? 0,
      pinned: json['pinned'] as bool,
      unread: json['unread'] as bool,
      dateUpdate: DateTime.parse(json['date_update'] as String),
      chat: json['chat'] == null
          ? null
          : ChatDialogGroup.fromJson(json['chat'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : ChatDialogUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatDialogToJson(ChatDialog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat_id': instance.chatId,
      'type': instance.type,
      'avatar': instance.avatar,
      'title': instance.title,
      'message': instance.lastMessage,
      'counter': instance.counter,
      'pinned': instance.pinned,
      'unread': instance.unread,
      'date_update': instance.dateUpdate.toIso8601String(),
      'chat': instance.chat,
      'user': instance.user,
    };
