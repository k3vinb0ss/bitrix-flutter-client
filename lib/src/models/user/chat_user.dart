import 'package:json_annotation/json_annotation.dart';

import '../../utils/parser.dart';

part 'chat_user.g.dart';

@JsonSerializable()
@BitrixTimeConverter()
class ChatUser {
  final int id;
  final bool active;
  final String? name;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'work_position')
  final String? workPosition;

  final String? color;
  final String? avatar;
  final String? gender;
  final String? status;
  @JsonKey(defaultValue: false)
  final bool idle;
  @JsonKey(name: 'last_activity_date')
  final DateTime? lastActivityDate;
  final bool? absent;
  final List<int> departments;

  ChatUser(
      {required this.id,
      required this.active,
      this.name,
      this.firstName,
      this.lastName,
      this.workPosition,
      this.color,
      this.avatar,
      this.gender,
      this.status,
      required this.idle,
      this.lastActivityDate,
      this.absent,
      this.departments = const []});

  factory ChatUser.fromJson(Map<String, dynamic> json) => _$ChatUserFromJson(json);
  Map<String, dynamic> toJson() => _$ChatUserToJson(this);

  @override
  String toString() {
    return 'ChatUser{id: $id, active: $active, name: $name, firstName: $firstName,'
        ' lastName: $lastName, workPosition: $workPosition, color: $color,'
        ' avatar: $avatar, gender: $gender, status: $status, idle: $idle,'
        ' lastActivityDate: $lastActivityDate'
        ' absent: $absent, departments: $departments}';
  }
}
