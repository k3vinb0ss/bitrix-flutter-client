// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatUser _$ChatUserFromJson(Map<String, dynamic> json) => ChatUser(
      id: json['id'] as int,
      active: json['active'] as bool,
      name: json['name'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['lastName'] as String?,
      workPosition: json['work_position'] as String?,
      color: json['color'] as String?,
      avatar: json['avatar'] as String?,
      gender: json['gender'] as String?,
      status: json['status'] as String?,
      idle: json['idle'] as bool? ?? false,
      lastActivityDate: const BitrixTimeConverter()
          .fromJson(json['last_activity_date'] as String?),
      absent: json['absent'] as bool?,
      departments: (json['departments'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ChatUserToJson(ChatUser instance) => <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'name': instance.name,
      'first_name': instance.firstName,
      'lastName': instance.lastName,
      'work_position': instance.workPosition,
      'color': instance.color,
      'avatar': instance.avatar,
      'gender': instance.gender,
      'status': instance.status,
      'idle': instance.idle,
      'last_activity_date':
          const BitrixTimeConverter().toJson(instance.lastActivityDate),
      'absent': instance.absent,
      'departments': instance.departments,
    };
