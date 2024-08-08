//         {
//             'jobAnnouncement_id': job.jobAnnouncement_id,
//             'job_title': job.job_title,
//             'branch': job.branch.name,
//             'experience': job.experience,
//             'city': job.branch.city,
//             'createdAt': job.createdAt.strftime('%d-%m-%Y'),  # Formatting the date
//             'user_points': points if has_skills else "N/A"  # Points are not applicable if no skills
//         }
import 'dart:convert';

List<SuitableJobsModel> suitableJobsModelFromJson(String str) {
  return (json.decode(str) as List).map((e) => SuitableJobsModel.fromJson(json.decode(e))).toList();
}

String suitableJobsModelToJson(SuitableJobsModel data) => json.encode(data.toJson());

class SuitableJobsModel {
  final int jobAnnouncementId;
  final String jobTitle;
  final String branch;
  final int experience;
  final String city;

  const SuitableJobsModel({
    required this.jobAnnouncementId,
    required this.jobTitle,
    required this.branch,
    required this.experience,
    required this.city,
  });

  factory SuitableJobsModel.fromJson(Map<String, dynamic> json) =>
      SuitableJobsModel(
        jobAnnouncementId: json["jobAnnouncement_id"],
        jobTitle: json["job_title"],
        branch: json["branch"],
        experience: json["experience"],
        city: json["city"],
      );

  Map<String, dynamic> toJson() =>
      {"jobAnnouncement_id": jobAnnouncementId, "job_title": jobTitle, "branch": branch, "experience": experience, "city": city};
}
