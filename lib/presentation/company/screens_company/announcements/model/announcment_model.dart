import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AnnouncmentModel {
  final int jobAnnouncementId;
  final String jobTitle;
  final String branch;
  final int experience;
  final String city;
  final String jobNature;
  final String? branchImage;
  final String type;
  AnnouncmentModel({
    required this.jobAnnouncementId,
    required this.jobTitle,
    required this.branch,
    required this.experience,
    required this.city,
    required this.jobNature,
    required this.branchImage,
    required this.type,
  });

  factory AnnouncmentModel.fromMap(Map<String, dynamic> map) {
    return AnnouncmentModel(
      jobAnnouncementId: map['jobAnnouncement_id'] as int,
      jobTitle: map['job_title'] as String,
      branch: map['branch'] as String,
      experience: map['experience'] as int,
      city: map['city'] as String,
      jobNature: map['job_nature'] as String,
      branchImage: map['branch_image'] as String?,
      type: map['type'] as String,
    );
  }
}
