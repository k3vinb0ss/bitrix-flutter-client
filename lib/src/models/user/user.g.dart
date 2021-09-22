// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['ID'] as String,
      active: json['ACTIVE'] as bool,
      email: json['EMAIL'] as String,
      lastLogin:
          const BitrixTimeConverter().fromJson(json['LAST_LOGIN'] as String?),
      dateRegister:
          const BitrixTimeConverter().fromJson(json['DATE_REGISTER'] as String?),
      isOnline: fromBitrixBool(json['isOnline']),
      name: json['NAME'] as String?,
      lastName: json['LAST_NAME'] as String?,
      secondName: json['SECOND_NAME'] as String?,
      gender: json['PERSONAL_GENDER'] as String,
      profession: json['PERSONAL_PROFESSION'] as String?,
      birthDay: const BitrixTimeConverter()
          .fromJson(json['PERSONAL_BIRTHDAY'] as String?),
      photo: json['PERSONAL_PHOTO'] as String?,
      phone: json['PERSONAL_PHONE'] as String?,
      mobile: json['PERSONAL_MOBILE'] as String?,
      workPosition: json['WORK_POSITION'] as String?,
      departments: (json['UF_DEPARTMENT'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
      facebook: json['UF_FACEBOOK'] as String?,
      skype: json['UF_SKYPE'] as String?,
      userType: json['USER_TYPE'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'ID': instance.id,
      'ACTIVE': instance.active,
      'EMAIL': instance.email,
      'LAST_LOGIN': const BitrixTimeConverter().toJson(instance.lastLogin),
      'DATE_REGISTER': const BitrixTimeConverter().toJson(instance.dateRegister),
      'isOnline': toBitrixBool(instance.isOnline),
      'NAME': instance.name,
      'LAST_NAME': instance.lastName,
      'SECOND_NAME': instance.secondName,
      'PERSONAL_GENDER': instance.gender,
      'PERSONAL_PROFESSION': instance.profession,
      'PERSONAL_BIRTHDAY': const BitrixTimeConverter().toJson(instance.birthDay),
      'PERSONAL_PHOTO': instance.photo,
      'PERSONAL_PHONE': instance.phone,
      'PERSONAL_MOBILE': instance.mobile,
      'WORK_POSITION': instance.workPosition,
      'UF_DEPARTMENT': instance.departments,
      'UF_FACEBOOK': instance.facebook,
      'UF_SKYPE': instance.skype,
      'USER_TYPE': instance.userType,
    };
