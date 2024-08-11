import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AddAnnouncmentParam {
  final String job_title;
  final String job_description;
  final int branch_id;
  final int jobNature_id;
  final String gender;
  final String educationLevel;
  final String type_of_employment;
  final int experience;
  final int salary;
  final String preferredToKnow;
  AddAnnouncmentParam({
    required this.job_title,
    required this.job_description,
    required this.branch_id,
    required this.jobNature_id,
    required this.gender,
    required this.educationLevel,
    required this.type_of_employment,
    required this.experience,
    required this.salary,
    required this.preferredToKnow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'job_title': job_title,
      'job_description': job_description,
      'branch_id': branch_id,
      'jobNature_id': jobNature_id,
      'gender': gender,
      'educationLevel': educationLevel,
      'type_of_employment': type_of_employment,
      'experience': experience,
      'salary': salary,
      'preferredToKnow': preferredToKnow,
    };
  }

  factory AddAnnouncmentParam.fromMap(Map<String, dynamic> map) {
    return AddAnnouncmentParam(
      job_title: map['job_title'] as String,
      job_description: map['job_description'] as String,
      branch_id: map['branch_id'] as int,
      jobNature_id: map['jobNature_id'] as int,
      gender: map['gender'] as String,
      educationLevel: map['educationLevel'] as String,
      type_of_employment: map['type_of_employment'] as String,
      experience: map['experience'] as int,
      salary: map['salary'] as int,
      preferredToKnow: map['preferredToKnow'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddAnnouncmentParam.fromJson(String source) => AddAnnouncmentParam.fromMap(json.decode(source) as Map<String, dynamic>);
}
