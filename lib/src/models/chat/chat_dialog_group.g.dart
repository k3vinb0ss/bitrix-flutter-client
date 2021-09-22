// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dialog_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatDialogGroup _$ChatDialogGroupFromJson(Map<String, dynamic> json) =>
    ChatDialogGroup(
      id: json['id'] as int,
      name: json['name'] as String,
      ownerId: json['owner'] as int,
      avatar: json['avatar'] as String?,
      color: json['color'] as String?,
      type: json['type'] as String,
      dateCreated: DateTime.parse(json['date_create'] as String),
      messageType: json['message_type'] as String,
    );

Map<String, dynamic> _$ChatDialogGroupToJson(ChatDialogGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.ownerId,
      'avatar': instance.avatar,
      'color': instance.color,
      'type': instance.type,
      'date_create': instance.dateCreated.toIso8601String(),
      'message_type': instance.messageType,
    };
