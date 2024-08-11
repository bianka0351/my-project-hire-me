import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserInfoModel {
  final int user_id;
  final String firstName;
  final String lastName;
  final String best_skill;
  final String email;
  final int age;
  final String address;
  final String phone_number;
  final String gender;
  final String? photo;
  final String city;
  final String educationLevel;
  final String birthDate;
  final String language;
  final String username;
  final String facebook_link;
  final String behance_link;
  final String github_link;
  final int user_type;
  final Experience experience;
  final SkillModel skill;
  UserInfoModel({
    required this.user_id,
    required this.firstName,
    required this.lastName,
    required this.best_skill,
    required this.email,
    required this.age,
    required this.address,
    required this.phone_number,
    required this.gender,
    required this.photo,
    required this.city,
    required this.educationLevel,
    required this.birthDate,
    required this.language,
    required this.username,
    required this.facebook_link,
    required this.behance_link,
    required this.github_link,
    required this.user_type,
    required this.experience,
    required this.skill,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': user_id,
      'firstName': firstName,
      'lastName': lastName,
      'best_skill': best_skill,
      'email': email,
      'age': age,
      'address': address,
      'phone_number': phone_number,
      'gender': gender,
      'photo': photo,
      'city': city,
      'educationLevel': educationLevel,
      'birthDate': birthDate,
      'language': language,
      'username': username,
      'facebook_link': facebook_link,
      'behance_link': behance_link,
      'github_link': github_link,
      'user_type': user_type,
      'previous_jobs': experience,
      'skills': skill.toJson(),
    };
  }

  factory UserInfoModel.fromMap(Map<String, dynamic> map) {
    return UserInfoModel(
      user_id: map['user_id'] as int,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      best_skill: map['best_skill'] as String,
      email: map['email'] as String,
      age: map['age'] as int,
      address: map['address'] as String,
      phone_number: map['phone_number'] as String,
      gender: map['gender'] as String,
      photo: map['photo'] as String?,
      city: map['city'] as String,
      educationLevel: map['educationLevel'] as String,
      birthDate: map['birthDate'] as String,
      language: map['language'] as String,
      username: map['username'] as String,
      facebook_link: map['facebook_link'] as String,
      behance_link: map['behance_link'] as String,
      github_link: map['github_link'] as String,
      user_type: map['user_type'] as int,
      experience: Experience.fromMap(map["experience"]),
      skill: SkillModel.fromMap(map["skill"]),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserInfoModel.fromJson(String source) => UserInfoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Experience {
  final int previousJob_id;
  final int jobNature_id;
  final String jobNature_name;
  final String job_name;
  final String start_date;
  final String? end_date;
  final double experience;
  final String? portfolio;
  final String description;
  final String recommendation;
  Experience({
    required this.previousJob_id,
    required this.jobNature_id,
    required this.jobNature_name,
    required this.job_name,
    required this.start_date,
    this.end_date,
    required this.experience,
    this.portfolio,
    required this.description,
    required this.recommendation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'previousJob_id': previousJob_id,
      'jobNature_id': jobNature_id,
      'jobNature_name': jobNature_name,
      'job_name': job_name,
      'start_date': start_date,
      'end_date': end_date,
      'experience': experience,
      'portfolio': portfolio,
      'description': description,
      'recommendation': recommendation,
    };
  }

  factory Experience.fromMap(Map<String, dynamic> map) {
    return Experience(
      previousJob_id: map['previousJob_id'] as int,
      jobNature_id: map['jobNature_id'] as int,
      jobNature_name: map['jobNature_name'] as String,
      job_name: map['job_name'] as String,
      start_date: map['start_date'] as String,
      end_date: map['end_date'] != null ? map['end_date'] as String : null,
      experience: map['experience'] as double,
      portfolio: map['portfolio'] != null ? map['portfolio'] as String : null,
      description: map['description'] as String,
      recommendation: map['recommendation'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Experience.fromJson(String source) => Experience.fromMap(json.decode(source) as Map<String, dynamic>);
}

class SkillModel {
  final int skill_id;
  final int jobNature_id;
  final String jobNature_name;
  final String skill_name;
  final String? description;
  final double experience;
  final String started_at;
  SkillModel({
    required this.skill_id,
    required this.jobNature_id,
    required this.jobNature_name,
    required this.skill_name,
    this.description,
    required this.experience,
    required this.started_at,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skill_id': skill_id,
      'jobNature_id': jobNature_id,
      'jobNature_name': jobNature_name,
      'skill_name': skill_name,
      'description': description,
      'experience': experience,
      'started_at': started_at,
    };
  }

  factory SkillModel.fromMap(Map<String, dynamic> map) {
    return SkillModel(
      skill_id: map['skill_id'] as int,
      jobNature_id: map['jobNature_id'] as int,
      jobNature_name: map['jobNature_name'] as String,
      skill_name: map['skill_name'] as String,
      description: map['description'] != null ? map['description'] as String : null,
      experience: map['experience'] as double,
      started_at: map['started_at'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SkillModel.fromJson(String source) => SkillModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
