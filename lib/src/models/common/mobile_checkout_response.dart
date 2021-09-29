import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mobile_checkout_response.freezed.dart';
part 'mobile_checkout_response.g.dart';

@freezed
class MobileCheckoutResponse with _$MobileCheckoutResponse {
    factory MobileCheckoutResponse({
        required String status,
        required String id,
        required String name,
        @JsonKey(name: 'sessid_md5')
        required String sessionId,
        required String target,
        required String photoUrl,
}) = _MobileCheckoutResponse;

    factory MobileCheckoutResponse.fromJson(Map<String, dynamic> json) => _$MobileCheckoutResponseFromJson(json);
}