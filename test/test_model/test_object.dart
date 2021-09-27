import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_object.freezed.dart';
part 'test_object.g.dart';

@freezed
class TestObject with _$TestObject {
    factory TestObject(
        int id,
    @JsonKey(name: 'file_name')
        String fileName,
        @JsonKey(name: 'file_ext')
        String fileExt,
        ) = _TestObject;

    factory TestObject.fromJson(Map<String, dynamic> json) => _$TestObjectFromJson(json);
}