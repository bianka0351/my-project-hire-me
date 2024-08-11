// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'dart:convert';

import 'package:hireme/const/app_keys.dart';
import 'package:hireme/presentation/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  final String? message;
  final int? userId;
  final int? userType;
  final String? firstName;
  final String? lastName;
  final int? branchId;

  AuthModel({
    this.message,
    this.userId,
    this.userType,
    this.firstName,
    this.lastName,
    this.branchId,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        message: json["message"],
        userId: json["user_id"],
        userType: json["user_type"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        branchId: json["branch_id"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "user_id": userId,
        "user_type": userType,
        "firstName": firstName,
        "lastName": lastName,
        "branch_id": branchId,
      };

  static setAuthData(AuthModel data) async {
    await prefs.setString(AppKeys.authData, jsonEncode(data.toJson()));
  }

  static AuthModel getAuthData() {
    return AuthModel.fromJson(jsonDecode(prefs.getString(AppKeys.authData)!));
  }
}
