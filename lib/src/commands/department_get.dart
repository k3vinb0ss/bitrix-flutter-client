

import 'api_command.dart';

class DepartmentGet extends ApiCommand {
  DepartmentGet() : super('department.get');

  @override
  String get getQuery => apiName;

  @override
  Map<String, dynamic> get getParams => {};

}