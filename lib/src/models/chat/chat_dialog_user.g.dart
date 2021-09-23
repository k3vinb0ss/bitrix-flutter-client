// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dialog_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatDialogUser _$ChatDialogUserFromJson(Map<String, dynamic> json) =>
    ChatDialogUser(
      id: json['id'] as int,
      active: json['active'] as bool?,
      name: json['name'] as String?,
      color: json['color'] as String?,
      avatar: json['avatar'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      workPosition: json['work_position'] as String?,
      departments: (json['departments'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      gender: json['gender'] as String?,
      birthday: json['birthday'] as String?,
      status: json['status'] as String?,
      lastActiveDate: json['last_activity_date'] == null
          ? null
          : DateTime.parse(json['last_activity_date'] as String),
    );

Map<String, dynamic> _$ChatDialogUserToJson(ChatDialogUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'name': instance.name,
      'color': instance.color,
      'avatar': instance.avatar,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'work_position': instance.workPosition,
      'departments': instance.departments,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'status': instance.status,
      'last_activity_date': instance.lastActiveDate?.toIso8601String(),
    };
