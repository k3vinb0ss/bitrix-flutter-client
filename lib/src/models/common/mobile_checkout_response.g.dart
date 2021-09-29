// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_checkout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MobileCheckoutResponse _$$_MobileCheckoutResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MobileCheckoutResponse(
      status: json['status'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      sessionId: json['sessid_md5'] as String,
      target: json['target'] as String,
      photoUrl: json['photoUrl'] as String,
    );

Map<String, dynamic> _$$_MobileCheckoutResponseToJson(
        _$_MobileCheckoutResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'id': instance.id,
      'name': instance.name,
      'sessid_md5': instance.sessionId,
      'target': instance.target,
      'photoUrl': instance.photoUrl,
    };
