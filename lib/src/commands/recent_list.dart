import 'api_command.dart';

class RecentListCommand extends ApiCommand {
  final bool skipOneOneDialog;
  final bool onlyOpenlines;

  RecentListCommand({this.skipOneOneDialog = false, this.onlyOpenlines = false})
      : super('im.recent.list');

  @override
  String get getQuery {
    final params = getParams;
    return 'rest/$apiName${params.isNotEmpty ? '?' : ''}'
        '${params.entries.map((e) => '${e.key}:${e.value}').join('&')}';
  }

  @override
  Map<String, dynamic> get getParams {
    var params = <String, dynamic>{};
    if (skipOneOneDialog) {
      params['SKIP_DIALOG'] = 'Y';
    }

    if (onlyOpenlines) {
      params['ONLY_OPENLINES'] = 'Y';
    }

    return params;
  }
}
