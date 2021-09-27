// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestObject _$TestObjectFromJson(Map<String, dynamic> json) {
  return _TestObject.fromJson(json);
}

/// @nodoc
class _$TestObjectTearOff {
  const _$TestObjectTearOff();

  _TestObject call(int id, @JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'file_ext') String fileExt) {
    return _TestObject(
      id,
      fileName,
      fileExt,
    );
  }

  TestObject fromJson(Map<String, Object> json) {
    return TestObject.fromJson(json);
  }
}

/// @nodoc
const $TestObject = _$TestObjectTearOff();

/// @nodoc
mixin _$TestObject {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_name')
  String get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_ext')
  String get fileExt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestObjectCopyWith<TestObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestObjectCopyWith<$Res> {
  factory $TestObjectCopyWith(
          TestObject value, $Res Function(TestObject) then) =
      _$TestObjectCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'file_ext') String fileExt});
}

/// @nodoc
class _$TestObjectCopyWithImpl<$Res> implements $TestObjectCopyWith<$Res> {
  _$TestObjectCopyWithImpl(this._value, this._then);

  final TestObject _value;
  // ignore: unused_field
  final $Res Function(TestObject) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? fileExt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileExt: fileExt == freezed
          ? _value.fileExt
          : fileExt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TestObjectCopyWith<$Res> implements $TestObjectCopyWith<$Res> {
  factory _$TestObjectCopyWith(
          _TestObject value, $Res Function(_TestObject) then) =
      __$TestObjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'file_ext') String fileExt});
}

/// @nodoc
class __$TestObjectCopyWithImpl<$Res> extends _$TestObjectCopyWithImpl<$Res>
    implements _$TestObjectCopyWith<$Res> {
  __$TestObjectCopyWithImpl(
      _TestObject _value, $Res Function(_TestObject) _then)
      : super(_value, (v) => _then(v as _TestObject));

  @override
  _TestObject get _value => super._value as _TestObject;

  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? fileExt = freezed,
  }) {
    return _then(_TestObject(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileExt == freezed
          ? _value.fileExt
          : fileExt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestObject with DiagnosticableTreeMixin implements _TestObject {
  _$_TestObject(this.id, @JsonKey(name: 'file_name') this.fileName,
      @JsonKey(name: 'file_ext') this.fileExt);

  factory _$_TestObject.fromJson(Map<String, dynamic> json) =>
      _$$_TestObjectFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'file_name')
  final String fileName;
  @override
  @JsonKey(name: 'file_ext')
  final String fileExt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestObject(id: $id, fileName: $fileName, fileExt: $fileExt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestObject'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('fileName', fileName))
      ..add(DiagnosticsProperty('fileExt', fileExt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TestObject &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.fileExt, fileExt) ||
                const DeepCollectionEquality().equals(other.fileExt, fileExt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(fileExt);

  @JsonKey(ignore: true)
  @override
  _$TestObjectCopyWith<_TestObject> get copyWith =>
      __$TestObjectCopyWithImpl<_TestObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestObjectToJson(this);
  }
}

abstract class _TestObject implements TestObject {
  factory _TestObject(int id, @JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'file_ext') String fileExt) = _$_TestObject;

  factory _TestObject.fromJson(Map<String, dynamic> json) =
      _$_TestObject.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'file_name')
  String get fileName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'file_ext')
  String get fileExt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TestObjectCopyWith<_TestObject> get copyWith =>
      throw _privateConstructorUsedError;
}
