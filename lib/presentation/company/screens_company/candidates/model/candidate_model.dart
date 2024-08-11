import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CandidateModel {
  final int user_id;
  final String firstName;
  final String lastName;
  final String email;
  final String? image;
  final String city;
  final String address;
  final String? best_skill;
  final String gender;
  CandidateModel({
    required this.user_id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.image,
    required this.city,
    required this.address,
    required this.best_skill,
    required this.gender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': user_id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'image': image,
      'city': city,
      'address': address,
      'best_skill': best_skill,
      'gender': gender,
    };
  }

  factory CandidateModel.fromMap(Map<String, dynamic> map) {
    return CandidateModel(
      user_id: map['user_id'] as int,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      email: map['email'] as String,
      image: map['image'] as String?,
      city: map['city'] as String,
      address: map['address'] as String,
      best_skill: map['best_skill'] as String?,
      gender: map['gender'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CandidateModel.fromJson(String source) => CandidateModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
