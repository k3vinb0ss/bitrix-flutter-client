abstract class ApiCommand {
  final String apiName;

  const ApiCommand(this.apiName);

  String get getQuery;
  Map<String, dynamic> get getParams;
}