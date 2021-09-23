import 'package:bitrixmobile_client/src/utils/parser.dart';
import 'package:json_annotation/json_annotation.dart';

part 'readed_item.g.dart';

@JsonSerializable()
@BitrixTimeConverter()
class ReadedItem {
  @JsonKey(name: 'user_id')
  final int userId;
  @JsonKey(name: 'user_name')
  final String userName;
  @JsonKey(name: 'message_id')
  final int messageId;
  final DateTime date;

  ReadedItem(
      {required this.userId,
      required this.userName,
      required this.messageId,
      required this.date});

  factory ReadedItem.fromJson(Map<String, dynamic> json) => _$ReadedItemFromJson(json);
  Map<String, dynamic> toJson() => _$ReadedItemToJson(this);

  @override
  String toString() {
    return 'ReadedItem{userId: $userId, userName: $userName, messageId: $messageId, date: $date}';
  }
}