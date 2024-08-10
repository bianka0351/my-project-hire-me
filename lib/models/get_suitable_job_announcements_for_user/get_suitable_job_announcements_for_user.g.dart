// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_suitable_job_announcements_for_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSuitableJobAnnouncementsForUserImpl
    _$$GetSuitableJobAnnouncementsForUserImplFromJson(
            Map<String, dynamic> json) =>
        _$GetSuitableJobAnnouncementsForUserImpl(
          length: json['length'] as String?,
          jobs: (json['jobs'] as List<dynamic>?)
              ?.map((e) => Job.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetSuitableJobAnnouncementsForUserImplToJson(
        _$GetSuitableJobAnnouncementsForUserImpl instance) =>
    <String, dynamic>{
      'length': instance.length,
      'jobs': instance.jobs,
    };

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
      jobAnnouncementId: json['jobAnnouncement_id'] as String?,
      jobTitle: json['job_title'] as String?,
      branch: json['branch'] as String?,
      experience: json['experience'] as String?,
      city: json['city'] as String?,
      createdAt: json['createdAt'] as String?,
      userPoints: json['user_points'] as String?,
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'jobAnnouncement_id': instance.jobAnnouncementId,
      'job_title': instance.jobTitle,
      'branch': instance.branch,
      'experience': instance.experience,
      'city': instance.city,
      'createdAt': instance.createdAt,
      'user_points': instance.userPoints,
    };
