// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_applied_job_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAppliedJobResponseImpl _$$GetAppliedJobResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAppliedJobResponseImpl(
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetAppliedJobResponseImplToJson(
        _$GetAppliedJobResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      length: (json['length'] as num?)?.toInt(),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'length': instance.length,
      'users': instance.users,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      appliedJobId: (json['appliedJob_id'] as num?)?.toInt(),
      jobAnnouncementId: (json['jobAnnouncement_id'] as num?)?.toInt(),
      jobTitle: json['job_title'] as String?,
      branchName: json['branch_name'] as String?,
      statusName: json['status_name'] as String?,
      message: json['message'] as String?,
      currentDate: json['current_date'] == null
          ? null
          : DateTime.parse(json['current_date'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'appliedJob_id': instance.appliedJobId,
      'jobAnnouncement_id': instance.jobAnnouncementId,
      'job_title': instance.jobTitle,
      'branch_name': instance.branchName,
      'status_name': instance.statusName,
      'message': instance.message,
      'current_date': instance.currentDate?.toIso8601String(),
    };
