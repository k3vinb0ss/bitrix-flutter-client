import 'package:json_annotation/json_annotation.dart';

part 'chat_last_message.g.dart';

@JsonSerializable()
class ChatLastMessage {
  final int id;
  final String text;
  final bool file;
  @JsonKey(name: 'author_id')
  final int authorId;
  final DateTime date;
  final String? status;

  ChatLastMessage(
      {required this.id,
      required this.text,
        required this.file,
      required this.authorId,
      required this.date,
      this.status});

  factory ChatLastMessage.fromJson(Map<String, dynamic> json) => _$ChatLastMessageFromJson(json);
  Map<String, dynamic> toJson() => _$ChatLastMessageToJson(this);

  @override
  String toString() {
    return 'ChatLastMessage{id: $id, text: $text, file: $file,'
        ' authorId: $authorId, date: $date, status: $status}';
  }
}
