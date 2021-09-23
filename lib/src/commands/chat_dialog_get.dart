import 'api_command.dart';

class DialogGetCommand extends ApiCommand {
  final String chatId;

  DialogGetCommand(this.chatId) : super('im.dialog.get');

  @override
  Map<String, dynamic> get getParams {
    return {'DIALOG_ID': chatId};
  }

  @override
  String get getQuery =>
      '$apiName?'
          '${getParams.entries.map((e) => '${e.key}=${e.value}').join('&')}';
}
