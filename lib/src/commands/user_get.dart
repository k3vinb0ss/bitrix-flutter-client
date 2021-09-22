
import 'api_command.dart';

class UserGetCommand extends ApiCommand {
  UserGetCommand() : super('user.get');

  @override
  String get getQuery => apiName;

}