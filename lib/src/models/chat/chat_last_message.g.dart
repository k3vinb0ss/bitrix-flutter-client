// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_last_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatLastMessage _$ChatLastMessageFromJson(Map<String, dynamic> json) =>
    ChatLastMessage(
      id: json['id'] as int,
      text: json['text'] as String,
      file: json['file'] as bool,
      authorId: json['author_id'] as int,
      date: DateTime.parse(json['date'] as String),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ChatLastMessageToJson(ChatLastMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'file': instance.file,
      'author_id': instance.authorId,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
    };
