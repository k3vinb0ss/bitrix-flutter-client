// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'readed_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReadedItem _$ReadedItemFromJson(Map<String, dynamic> json) => ReadedItem(
      userId: json['user_id'] as int,
      userName: json['user_name'] as String,
      messageId: json['message_id'] as int,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$ReadedItemToJson(ReadedItem instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_name': instance.userName,
      'message_id': instance.messageId,
      'date': instance.date.toIso8601String(),
    };
