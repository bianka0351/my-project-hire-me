part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class LoginEvent extends AuthEvent {
  final String username_or_email, password;

  LoginEvent({
    required this.password,
    required this.username_or_email,
  });
}

class CreateEvent extends AuthEvent {
  String firstName;
  String lastName;
  String username;
  String password;
  String email;
  DateTime birthDate;
  String address;
  String city;
  String educationLevel;
  String gender;
  String phone_number;

  CreateEvent({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.password,
    required this.email,
    required this.birthDate,
    required this.address,
    required this.city,
    required this.educationLevel,
    required this.gender,
    required this.phone_number,
  });
}
