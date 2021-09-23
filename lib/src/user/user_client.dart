import 'package:bitrixmobile_client/src/commands/department_get.dart';
import 'package:flutter/foundation.dart';

import '../client.dart';
import '../commands/user_get.dart';
import '../common/parse_functions.dart';
import '../common/result.dart';
import '../http/http_client.dart';
import '../models/department/department.dart';
import '../models/user/user.dart';

abstract class UserClient {
  Future<Result<List<User>>> getAllUsers(UserGetCommand command);

  Future<Result<List<Department>>> getAllDepartments(DepartmentGet command);
}

class UserClientImpl extends UserClient {
  final BitrixClient _bitrixClient;
  final HttpClient httpClient;

  UserClientImpl(this._bitrixClient) : httpClient = _bitrixClient.httpClient;

  @override
  Future<Result<List<User>>> getAllUsers(UserGetCommand command) async {
    final response = await httpClient
        .get(BasicRequest('${_bitrixClient.baseUrl}/${command.getQuery}'));

    if (response.statusCode == 200) {
      final users = await compute(parseAllUsers, response.body);
      return Result.success(users);
    } else {
      return Result.error(response.statusCode, message: 'Something went wrong');
    }
  }

  @override
  Future<Result<List<Department>>> getAllDepartments(
      DepartmentGet command) async {
    final response = await httpClient
        .get(BasicRequest('${_bitrixClient.baseUrl}/${command.getQuery}'));

    if (response.statusCode == 200) {
      final departments = await compute(parseAllDepartments, response.body);
      return Result.success(departments);
    } else {
      return Result.error(response.statusCode, message: 'Something went wrong');
    }
  }
}
