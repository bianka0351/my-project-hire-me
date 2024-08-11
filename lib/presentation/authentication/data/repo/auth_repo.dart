import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hireme/const/app_keys.dart';
import 'package:hireme/presentation/authentication/data/datasource/auth_datasource.dart';
import 'package:hireme/presentation/authentication/data/models/auth_model.dart';
import 'package:hireme/unified_api/failures.dart';
import 'package:hireme/unified_api/handling_exception_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo with HandlingExceptionManager {
  Future<Either<Failure, AuthModel>> login(String username_or_email, String password) async {
    return wrapHandling(tryCall: () async {
      final result = await AuthDataSource().login(username_or_email, password);
      AuthModel.setAuthData(result);
      return Right(result);
    });
  }

  Future<Either<Failure, AuthModel>> create(String firstName, String lastName, String username, String password, String email, DateTime birthDate,
      String address, String city, String educationLevel, String gender, String phone_number) async {
    return wrapHandling(tryCall: () async {
      final result = await AuthDataSource()
          .create(firstName, lastName, username, password, email, birthDate, address, city, educationLevel, gender, phone_number);
      return Right(result);
    });
  }
}
