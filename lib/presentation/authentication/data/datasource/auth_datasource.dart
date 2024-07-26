import 'package:hireme/unified_api/post_api.dart';

import '../models/auth_model.dart';

class AuthDataSource {
  Future<AuthModel> login(String username_or_email, String password) async {
    PostApi postApi = PostApi(
        body: {
          'username_or_email': username_or_email,
          'password': password,
        },
        uri: Uri.parse('http://192.168.43.120:8000/users/login/'),
        fromJson: authModelFromJson);
    final result = await postApi.callRequest();
    return result;
  }

  Future<AuthModel> create(
      String firstName,
      String lastName,
      String username,
      String password,
      String email,
      DateTime birthDate,
      String address,
      String city,
      String educationLevel,
      String gender,
      String phone_number) async {
    PostApi postApi = PostApi(
        body: {
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
          "phone_number": phone_number
        },
        uri: Uri.parse('http://192.168.43.120:8000/users/create/'),
        fromJson: authModelFromJson);
    final result = await postApi.callRequest();
    return result;
  }
}
