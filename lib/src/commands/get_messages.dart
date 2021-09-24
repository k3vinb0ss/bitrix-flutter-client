import 'api_command.dart';

class GetMessagesCommand extends ApiCommand {
  final String chatId;

  GetMessagesCommand(this.chatId) : super('im.dialog.messages.get');

  @override
  Map<String, dynamic> get getParams => {'DIALOG_ID': chatId};

  @override
  String get getQuery =>
      '$apiName?${getParams.entries.map((e) => '${e.key}=${e.value}').join('&')}';
}
