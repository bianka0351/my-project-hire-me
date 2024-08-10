// To parse this JSON data, do
//
//     final getAllSkillsResponse = getAllSkillsResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_all_skills_response.freezed.dart';
part 'get_all_skills_response.g.dart';

GetAllSkillsResponse getAllSkillsResponseFromJson(String str) => GetAllSkillsResponse.fromJson(json.decode(str));

String getAllSkillsResponseToJson(GetAllSkillsResponse data) => json.encode(data.toJson());

@freezed
class GetAllSkillsResponse with _$GetAllSkillsResponse {
  const factory GetAllSkillsResponse({
    @JsonKey(name: "skills")
    List<Skill>? skills,
    @JsonKey(name: "count")
    int? count,
  }) = _GetAllSkillsResponse;

  factory GetAllSkillsResponse.fromJson(Map<String, dynamic> json) => _$GetAllSkillsResponseFromJson(json);
}

@freezed
class Skill with _$Skill {
  const factory Skill({
    @JsonKey(name: "skill_name")
    String? skillName,
  }) = _Skill;

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}
