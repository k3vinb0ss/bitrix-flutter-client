
import 'package:json_annotation/json_annotation.dart';

part 'chat_avatar.g.dart';

@JsonSerializable()
class ChatAvatar {
  final String? url;
  final String? color;

  ChatAvatar({this.url, this.color});
  
  factory ChatAvatar.fromJson(Map<String, dynamic> json) => _$ChatAvatarFromJson(json);
  Map<String, dynamic> toJson() => _$ChatAvatarToJson(this);

  @override
  String toString() {
    return 'ChatAvatar{url: $url, color: $color}';
  }
}