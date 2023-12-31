import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:task_one/app_api/constants.dart';
import 'package:task_one/app_api/user_model.dart';

//-------------------------------------------------------------------------//

class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> model = userModelFromJson(response.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
