abstract class ApiCommand {
  final String apiName;

  const ApiCommand(this.apiName);

  String get getQuery;
}

class RecentListCommand extends ApiCommand {
  final bool skipOneOneDialog;
  final bool onlyOpenlines;

  RecentListCommand({this.skipOneOneDialog = false, this.onlyOpenlines = false})
      : super('im.recent.list');

  @override
  String get getQuery {
    var params = <String>[];
    if (skipOneOneDialog) {
      params.add('SKIP_DIALOG=Y');
    }
    
    if (onlyOpenlines) {
      params.add('ONLY_OPENLINES=Y');
    }
    
    return '$apiName${params.isNotEmpty ? '?' : ''}${params.join('&')}';
  }
}
