// To parse this JSON data, do
//
//     final getAppliedJobResponse = getAppliedJobResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_applied_job_response.freezed.dart';
part 'get_applied_job_response.g.dart';

GetAppliedJobResponse getAppliedJobResponseFromJson(String str) => GetAppliedJobResponse.fromJson(json.decode(str));

String getAppliedJobResponseToJson(GetAppliedJobResponse data) => json.encode(data.toJson());

@freezed
class GetAppliedJobResponse with _$GetAppliedJobResponse {
  const factory GetAppliedJobResponse({
    @JsonKey(name: "result")
    Result? result,
  }) = _GetAppliedJobResponse;

  factory GetAppliedJobResponse.fromJson(Map<String, dynamic> json) => _$GetAppliedJobResponseFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: "length")
    int? length,
    @JsonKey(name: "users")
    List<User>? users,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "appliedJob_id")
    int? appliedJobId,
    @JsonKey(name: "jobAnnouncement_id")
    int? jobAnnouncementId,
    @JsonKey(name: "job_title")
    String? jobTitle,
    @JsonKey(name: "branch_name")
    String? branchName,
    @JsonKey(name: "status_name")
    String? statusName,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "current_date")
    DateTime? currentDate,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
