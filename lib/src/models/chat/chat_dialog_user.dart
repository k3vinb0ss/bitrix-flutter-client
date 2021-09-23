import 'package:json_annotation/json_annotation.dart';

part 'chat_dialog_user.g.dart';

@JsonSerializable()
class ChatDialogUser {
  final int id;
  final bool? active;
  final String? name;
  final String? color;
  final String? avatar;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  @JsonKey(name: 'work_position')
  final String? workPosition;
  final List<int>? departments;
  final String? gender;
  final String? birthday;
  final String? status;
  @JsonKey(name: 'last_activity_date')
  final DateTime? lastActiveDate;

  ChatDialogUser(
      {required this.id,
      this.active,
      this.name,
      this.color,
      this.avatar,
      this.firstName,
      this.lastName,
      this.workPosition,
      this.departments,
      this.gender,
      this.birthday,
      this.status,
      this.lastActiveDate});

  factory ChatDialogUser.fromJson(Map<String, dynamic> json) =>
      _$ChatDialogUserFromJson(json);

  Map<String, dynamic> toJson() => _$ChatDialogUserToJson(this);

  @override
  String toString() {
    return 'ChatDialogUser{id: $id, active: $active, name: $name,'
        ' color: $color, avatar: $avatar, firstName: $firstName,'
        ' lastName: $lastName, workPosition: $workPosition,'
        ' departments: $departments, gender: $gender, birthday: $birthday,'
        ' status: $status, lastActiveDate: $lastActiveDate}';
  }
}
