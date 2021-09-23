

import 'package:json_annotation/json_annotation.dart';

import '../../utils/parser.dart';

part 'user.g.dart';

@JsonSerializable()
@BitrixTimeConverter()
class User {
  @JsonKey(name: 'ID')
  final String id;
  @JsonKey(name: 'ACTIVE')
  final bool active;
  @JsonKey(name: 'EMAIL')
  final String email;
  @JsonKey(name: 'LAST_LOGIN')
  final DateTime? lastLogin;
  @JsonKey(name: 'DATE_REGISTER')
  final DateTime? dateRegister;
  @JsonKey(fromJson: fromBitrixBool, toJson: toBitrixBool)
  final bool isOnline;
  @JsonKey(name: 'NAME')
  final String? name;
  @JsonKey(name: 'LAST_NAME')
  final String? lastName;
  @JsonKey(name: 'SECOND_NAME')
  final String? secondName;
  @JsonKey(name: 'PERSONAL_GENDER')
  final String gender;
  @JsonKey(name: 'PERSONAL_PROFESSION')
  final String? profession;
  @JsonKey(name: 'PERSONAL_BIRTHDAY')
  final DateTime? birthDay;
  @JsonKey(name: 'PERSONAL_PHOTO')
  final String? photo;
  @JsonKey(name: 'PERSONAL_PHONE')
  final String? phone;
  @JsonKey(name: 'PERSONAL_MOBILE')
  final String? mobile;
  @JsonKey(name: 'WORK_POSITION')
  final String? workPosition;
  @JsonKey(name: 'UF_DEPARTMENT')
  final List<int> departments;
  @JsonKey(name: 'UF_FACEBOOK')
  final String? facebook;
  @JsonKey(name: 'UF_SKYPE')
  final String? skype;
  @JsonKey(name: 'USER_TYPE')
  final String userType;

  User(
      {
        required this.id,
      required this.active,
      required this.email,
      this.lastLogin,
      this.dateRegister,
      required this.isOnline,
      this.name,
      this.lastName,
      this.secondName,
      required this.gender,
      this.profession,
      required this.birthDay,
      this.photo,
      this.phone,
      this.mobile,
      this.workPosition,
      this.departments = const [],
      this.facebook,
      this.skype,
      required this.userType});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return 'User{id: $id, active: $active, email: $email, lastLogin: $lastLogin,'
        ' dateRegister: $dateRegister, isOnline: $isOnline, name: $name,'
        ' lastName: $lastName, secondName: $secondName, gender: $gender,'
        ' profession: $profession, birthDay: $birthDay, photo: $photo,'
        ' phone: $phone, mobile: $mobile, workPosition: $workPosition,'
        ' departments: $departments, facebook: $facebook, skype: $skype,'
        ' userType: $userType}';
  }
}