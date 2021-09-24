import 'api_command.dart';

class SendMessageCommand extends ApiCommand {
  final int? chatId;
  final int? userId;
  final String message;

  SendMessageCommand({this.chatId, this.userId, required this.message})
      : super('im.message.add') {
    if (chatId == null && userId == null) {
      throw Exception('chatId or userId must be specified');
    }
  }

  @override
  Map<String, dynamic> get getParams => {
        'MESSAGE': message,
        ...(chatId != null ? {'CHAT_ID': chatId} : {'USER_ID': userId})
      };

  @override
  String get getQuery =>
      '$apiName?${getParams.entries.map((e) => '${e.key}=${e.value}').join('&')}';
}
