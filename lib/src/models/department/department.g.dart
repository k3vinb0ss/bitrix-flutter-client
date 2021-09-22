// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Department _$DepartmentFromJson(Map<String, dynamic> json) => Department(
      id: fromStringJsonToInt(json['ID']),
      name: json['NAME'] as String,
      sort: fromStringJsonToInt(json['SORT']),
      parent: fromStringJsonToInt(json['PARENT']),
      head: fromStringJsonToInt(json['UF_HEAD']),
    );

Map<String, dynamic> _$DepartmentToJson(Department instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'NAME': instance.name,
      'SORT': instance.sort,
      'PARENT': instance.parent,
      'UF_HEAD': instance.head,
    };
