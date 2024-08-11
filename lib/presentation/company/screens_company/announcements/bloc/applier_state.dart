

abstract class ApplierState {
  const ApplierState();

  @override
  List<Object> get props => [];
}

class ApplierInitial extends ApplierState {}

class ApplierLoading extends ApplierState {}

class ApplierLoaded extends ApplierState {
  final List<Applier> appliers;

  const ApplierLoaded(this.appliers);

  @override
  List<Object> get props => [appliers];
}

class ApplierSuccess extends ApplierState {
  final String message;

  const ApplierSuccess(this.message);

  @override
  List<Object> get props => [message];
}

class ApplierFailure extends ApplierState {
  final String error;

  const ApplierFailure(this.error);

  @override
  List<Object> get props => [error];
}

class Applier {
  final int userId;
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String city;
  final String educationLevel;
  final String gender;
  final String points;

  Applier({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.city,
    required this.educationLevel,
    required this.gender,
    required this.points,
  });

  factory Applier.fromJson(Map<String, dynamic> json) {
    return Applier(
      userId: json['user_id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      phoneNumber: json['phone_number'],
      city: json['city'],
      educationLevel: json['educationLevel'],
      gender: json['gender'],
      points: json['points'],
    );
  }
}