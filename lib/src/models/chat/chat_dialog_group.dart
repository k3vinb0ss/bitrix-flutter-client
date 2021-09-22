import 'package:json_annotation/json_annotation.dart';

part 'chat_dialog_group.g.dart';

@JsonSerializable()
class ChatDialogGroup {
  final int id;
  final String name;
  @JsonKey(name: 'owner')
  final int ownerId;

  final String? avatar;
  final String? color;
  final String type;
  @JsonKey(name: 'date_create')
  final DateTime dateCreated;
  @JsonKey(name: 'message_type')
  final String messageType;

  ChatDialogGroup(
      {required this.id,
      required this.name,
      required this.ownerId,
      this.avatar,
      this.color,
      required this.type,
      required this.dateCreated,
      required this.messageType});

  factory ChatDialogGroup.fromJson(Map<String, dynamic> json) => _$ChatDialogGroupFromJson(json);
  Map<String, dynamic> toJson() => _$ChatDialogGroupToJson(this);

  @override
  String toString() {
    return 'ChatDialogGroup{id: $id, name: $name, ownerId: $ownerId,'
        ' avatar: $avatar, color: $color, type: $type,'
        ' dateCreated: $dateCreated, messageType: $messageType}';
  }
}