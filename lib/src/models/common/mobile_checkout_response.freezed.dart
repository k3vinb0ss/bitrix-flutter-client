// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mobile_checkout_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MobileCheckoutResponse _$MobileCheckoutResponseFromJson(
    Map<String, dynamic> json) {
  return _MobileCheckoutResponse.fromJson(json);
}

/// @nodoc
class _$MobileCheckoutResponseTearOff {
  const _$MobileCheckoutResponseTearOff();

  _MobileCheckoutResponse call(
      {required String status,
      required String id,
      required String name,
      @JsonKey(name: 'sessid_md5') required String sessionId,
      required String target,
      required String photoUrl}) {
    return _MobileCheckoutResponse(
      status: status,
      id: id,
      name: name,
      sessionId: sessionId,
      target: target,
      photoUrl: photoUrl,
    );
  }

  MobileCheckoutResponse fromJson(Map<String, Object> json) {
    return MobileCheckoutResponse.fromJson(json);
  }
}

/// @nodoc
const $MobileCheckoutResponse = _$MobileCheckoutResponseTearOff();

/// @nodoc
mixin _$MobileCheckoutResponse {
  String get status => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'sessid_md5')
  String get sessionId => throw _privateConstructorUsedError;
  String get target => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileCheckoutResponseCopyWith<MobileCheckoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileCheckoutResponseCopyWith<$Res> {
  factory $MobileCheckoutResponseCopyWith(MobileCheckoutResponse value,
          $Res Function(MobileCheckoutResponse) then) =
      _$MobileCheckoutResponseCopyWithImpl<$Res>;
  $Res call(
      {String status,
      String id,
      String name,
      @JsonKey(name: 'sessid_md5') String sessionId,
      String target,
      String photoUrl});
}

/// @nodoc
class _$MobileCheckoutResponseCopyWithImpl<$Res>
    implements $MobileCheckoutResponseCopyWith<$Res> {
  _$MobileCheckoutResponseCopyWithImpl(this._value, this._then);

  final MobileCheckoutResponse _value;
  // ignore: unused_field
  final $Res Function(MobileCheckoutResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? sessionId = freezed,
    Object? target = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MobileCheckoutResponseCopyWith<$Res>
    implements $MobileCheckoutResponseCopyWith<$Res> {
  factory _$MobileCheckoutResponseCopyWith(_MobileCheckoutResponse value,
          $Res Function(_MobileCheckoutResponse) then) =
      __$MobileCheckoutResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String id,
      String name,
      @JsonKey(name: 'sessid_md5') String sessionId,
      String target,
      String photoUrl});
}

/// @nodoc
class __$MobileCheckoutResponseCopyWithImpl<$Res>
    extends _$MobileCheckoutResponseCopyWithImpl<$Res>
    implements _$MobileCheckoutResponseCopyWith<$Res> {
  __$MobileCheckoutResponseCopyWithImpl(_MobileCheckoutResponse _value,
      $Res Function(_MobileCheckoutResponse) _then)
      : super(_value, (v) => _then(v as _MobileCheckoutResponse));

  @override
  _MobileCheckoutResponse get _value => super._value as _MobileCheckoutResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? sessionId = freezed,
    Object? target = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_MobileCheckoutResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MobileCheckoutResponse
    with DiagnosticableTreeMixin
    implements _MobileCheckoutResponse {
  _$_MobileCheckoutResponse(
      {required this.status,
      required this.id,
      required this.name,
      @JsonKey(name: 'sessid_md5') required this.sessionId,
      required this.target,
      required this.photoUrl});

  factory _$_MobileCheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MobileCheckoutResponseFromJson(json);

  @override
  final String status;
  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'sessid_md5')
  final String sessionId;
  @override
  final String target;
  @override
  final String photoUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MobileCheckoutResponse(status: $status, id: $id, name: $name, sessionId: $sessionId, target: $target, photoUrl: $photoUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MobileCheckoutResponse'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('sessionId', sessionId))
      ..add(DiagnosticsProperty('target', target))
      ..add(DiagnosticsProperty('photoUrl', photoUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MobileCheckoutResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)) &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sessionId) ^
      const DeepCollectionEquality().hash(target) ^
      const DeepCollectionEquality().hash(photoUrl);

  @JsonKey(ignore: true)
  @override
  _$MobileCheckoutResponseCopyWith<_MobileCheckoutResponse> get copyWith =>
      __$MobileCheckoutResponseCopyWithImpl<_MobileCheckoutResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MobileCheckoutResponseToJson(this);
  }
}

abstract class _MobileCheckoutResponse implements MobileCheckoutResponse {
  factory _MobileCheckoutResponse(
      {required String status,
      required String id,
      required String name,
      @JsonKey(name: 'sessid_md5') required String sessionId,
      required String target,
      required String photoUrl}) = _$_MobileCheckoutResponse;

  factory _MobileCheckoutResponse.fromJson(Map<String, dynamic> json) =
      _$_MobileCheckoutResponse.fromJson;

  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sessid_md5')
  String get sessionId => throw _privateConstructorUsedError;
  @override
  String get target => throw _privateConstructorUsedError;
  @override
  String get photoUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MobileCheckoutResponseCopyWith<_MobileCheckoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
