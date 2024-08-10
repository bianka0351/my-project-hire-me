// To parse this JSON data, do
//
//     final getSuitableJobAnnouncementsForUser = getSuitableJobAnnouncementsForUserFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_suitable_job_announcements_for_user.freezed.dart';
part 'get_suitable_job_announcements_for_user.g.dart';

GetSuitableJobAnnouncementsForUser getSuitableJobAnnouncementsForUserFromJson(String str) => GetSuitableJobAnnouncementsForUser.fromJson(json.decode(str));

String getSuitableJobAnnouncementsForUserToJson(GetSuitableJobAnnouncementsForUser data) => json.encode(data.toJson());

@freezed
class GetSuitableJobAnnouncementsForUser with _$GetSuitableJobAnnouncementsForUser {
  const factory GetSuitableJobAnnouncementsForUser({
    @JsonKey(name: "length")
    String? length,
    @JsonKey(name: "jobs")
    List<Job>? jobs,
  }) = _GetSuitableJobAnnouncementsForUser;

  factory GetSuitableJobAnnouncementsForUser.fromJson(Map<String, dynamic> json) => _$GetSuitableJobAnnouncementsForUserFromJson(json);
}

@freezed
class Job with _$Job {
  const factory Job({
    @JsonKey(name: "jobAnnouncement_id")
    String? jobAnnouncementId,
    @JsonKey(name: "job_title")
    String? jobTitle,
    @JsonKey(name: "branch")
    String? branch,
    @JsonKey(name: "experience")
    String? experience,
    @JsonKey(name: "city")
    String? city,
    @JsonKey(name: "createdAt")
    String? createdAt,
    @JsonKey(name: "user_points")
    String? userPoints,
  }) = _Job;

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
}
