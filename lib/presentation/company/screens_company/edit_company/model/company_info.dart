import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CompanyInfoModel {
  final int branch_id;
  final String username;
  final String password;
  final String email;
  final String phone_number;
  final String branch_name;
  final String branch_city;
  final String company_name;
  final String? image;
  CompanyInfoModel({
    required this.branch_id,
    required this.username,
    required this.password,
    required this.email,
    required this.phone_number,
    required this.branch_name,
    required this.branch_city,
    required this.company_name,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch_id': branch_id,
      'username': username,
      'password': password,
      'email': email,
      'phone_number': phone_number,
      'branch_name': branch_name,
      'branch_city': branch_city,
      'company_name': company_name,
      'image': image,
    };
  }

  factory CompanyInfoModel.fromMap(Map<String, dynamic> map) {
    return CompanyInfoModel(
      branch_id: map['branch_id'] as int,
      username: map['username'] as String,
      password: map['password'] as String,
      email: map['email'] as String,
      phone_number: map['phone_number'] as String,
      branch_name: map['branch_name'] as String,
      branch_city: map['branch_city'] as String,
      company_name: map['company_name'] as String,
      image: map['image'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyInfoModel.fromJson(String source) => CompanyInfoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
