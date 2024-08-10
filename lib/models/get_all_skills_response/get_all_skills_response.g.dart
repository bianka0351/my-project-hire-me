// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_skills_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllSkillsResponseImpl _$$GetAllSkillsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllSkillsResponseImpl(
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetAllSkillsResponseImplToJson(
        _$GetAllSkillsResponseImpl instance) =>
    <String, dynamic>{
      'skills': instance.skills,
      'count': instance.count,
    };

_$SkillImpl _$$SkillImplFromJson(Map<String, dynamic> json) => _$SkillImpl(
      skillName: json['skill_name'] as String?,
    );

Map<String, dynamic> _$$SkillImplToJson(_$SkillImpl instance) =>
    <String, dynamic>{
      'skill_name': instance.skillName,
    };
