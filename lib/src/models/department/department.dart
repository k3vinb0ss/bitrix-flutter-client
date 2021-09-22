import 'package:json_annotation/json_annotation.dart';

import '../../extensions/parser.dart';

part 'department.g.dart';

@JsonSerializable()
class Department {
  @JsonKey(name: 'ID', fromJson: fromStringJsonToInt)
  final int id;

  @JsonKey(name: 'NAME')
  final String name;

  @JsonKey(name: 'SORT', fromJson: fromStringJsonToInt)
  final int sort;

  @JsonKey(name: 'PARENT', fromJson: fromStringJsonToInt)
  final int? parent;

  @JsonKey(name: 'UF_HEAD', fromJson: fromStringJsonToInt)
  final int head;

  Department(
      {required this.id,
      required this.name,
      required this.sort,
      this.parent,
      required this.head});

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);

  Map<String, dynamic> toJson() => _$DepartmentToJson(this);

  @override
  String toString() {
    return 'Department{id: $id, name: $name, sort: $sort, parent: $parent, head: $head}';
  }
}
