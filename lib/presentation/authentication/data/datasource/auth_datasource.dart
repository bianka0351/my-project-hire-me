import 'package:hireme/const/app_keys.dart';
import 'package:hireme/helper/shared_preferences_helper.dart';
import 'package:hireme/unified_api/app_url.dart';
import 'package:hireme/unified_api/post_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../app_config.dart';
import '../models/auth_model.dart';

class AuthDataSource {
  Future<AuthModel> login(String username_or_email, String password) async {
    PostApi postApi = PostApi(body: {
      'username_or_email': username_or_email,
      'password': password,
    }, uri: Uri.parse('${AppUrl.baseUrl}users/login/'), fromJson: authModelFromJson);
    final result = await postApi.callRequest();
    return result;
  }

  Future<AuthModel> create(String firstName, String lastName, String username, String password, String email, DateTime birthDate, String address,
      String city, String educationLevel, String gender, String phone_number) async {
    PostApi postApi = PostApi(body: {
      "firstName": firstName,
      "lastName": lastName,
      "username": username,
      "password": password,
      "email": email,
      "birthDate": birthDate,
      "address": address,
      "city": city,
      "educationLevel": educationLevel,
      "gender": gender,
      "pahone_number": phone_number
    }, uri: Uri.parse('${AppConfig.BASE_URL}users/create/'), fromJson: authModelFromJson);
    final result = await postApi.callRequest();
    return result;
  }
}
