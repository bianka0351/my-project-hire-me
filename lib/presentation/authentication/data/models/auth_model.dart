// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'dart:convert';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  final String? message;
  final int? userId;
  final int? userType;
  final String? firstName;
  final String? lastName;

  AuthModel({
    this.message,
    this.userId,
    this.userType,
    this.firstName,
    this.lastName,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
    message: json["message"],
    userId: json["user_id"],
    userType: json["user_type"],
    firstName: json["firstName"],
    lastName: json["lastName"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "user_id": userId,
    "user_type": userType,
    "firstName": firstName,
    "lastName": lastName,
  };
}
