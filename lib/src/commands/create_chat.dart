import 'api_command.dart';

// ignore_for_file: constant_identifier_names

class CreateChatCommand extends ApiCommand {
  final List<int> userIds;
  final ChatType type;
  final String? title;
  final String? base64ImageAvatar;
  final String? greetingMessage;

  CreateChatCommand(
      {required this.userIds,
      this.type = ChatType.chat,
      this.title,
      this.base64ImageAvatar,
      this.greetingMessage})
      : super('im.chat.add');

  @override
  String get getQuery => apiName;

  @override
  Map<String, dynamic> get getParams {
    var params = <String, String>{};

    params['USERS'] = '[${userIds.join(',')}]';

    if (type == ChatType.open) {
      params['TYPE'] = 'OPEN';
    }

    if (title != null) {
      params['TITLE'] = title!;
    }

    if (base64ImageAvatar != null) {
      params['AVATAR'] = base64ImageAvatar!;
    }

    if (greetingMessage != null) {
      params['MESSAGE'] = greetingMessage!;
    }

    return params;
  }
}

enum ChatType { chat, open }
