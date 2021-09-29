
import 'api_command.dart';

class DialogUsersGetCommand extends ApiCommand {
  final String chatId;

  DialogUsersGetCommand(this.chatId) : super('im.dialog.users.get');

  @override
  Map<String, dynamic> get getParams => {
    'DIALOG_ID': chatId
  };

  @override
  String get getQuery => 'rest/$apiName?'
      '${getParams.entries.map((e) => '${e.key}=${e.value}').join('&')}';

}