import 'package:hireme/app_config.dart';
import 'package:hireme/const/app_keys.dart';
import 'package:hireme/helper/shared_preferences_helper.dart';
import 'package:hireme/models/get_all_skills_response/get_all_skills_response.dart';
import 'package:http/http.dart' as http;

import '../models/get_all_branch_response/get_all_branch_response.dart';
import '../models/get_applied_job_response/get_applied_job_response.dart';
import '../models/get_suitable_job_announcements_for_user/get_suitable_job_announcements_for_user.dart';

class MainRepo {
  Future<GetSuitableJobAnnouncementsForUser> getJobs() async {
    var url = Uri.parse(
        '${AppConfig.BASE_URL}${SharedPreferencesHelper.getData(key: AppKeys.userId) ?? 15}/suitable_jobs/');
    final response = await http.get(url);
    return getSuitableJobAnnouncementsForUserFromJson(response.body);
  }

  Future<GetSuitableJobAnnouncementsForUser> getFilteredJobs({
    required String terms,
    required String salary,
    required String city,
    required String branch,
  }) async {
    var url = Uri.parse(
        '${AppConfig.BASE_URL}${SharedPreferencesHelper.getData(key: AppKeys.userId) ?? 15}/suitable_jobs/');
    final response = await http.post(url, body: {
      "city": city,
      "branch_name": branch,
      "sort_order": salary,
      "search_term": terms,
    });
    return getSuitableJobAnnouncementsForUserFromJson(response.body);
  }

  Future<GetAllBranchResponse> getBranches() async {
    var url = Uri.parse(
        '${AppConfig.BASE_URL}user/${SharedPreferencesHelper.getData(key: AppKeys.userId) ?? 15}/branches/');
    final response = await http.get(url);
    return getAllBranchResponseFromJson(response.body);
  }

  Future<GetAllSkillsResponse> getSkills() async {
    var url = Uri.parse(
        '${AppConfig.BASE_URL}skill/filtered_skills/${SharedPreferencesHelper.getData(key: AppKeys.userId) ?? 15}');
    final response = await http.get(url);
    return getAllSkillsResponseFromJson(response.body);
  }

  Future<GetAppliedJobResponse> getAppliedJob() async {
    var url = Uri.parse(
        '${AppConfig.BASE_URL}skill/filtered_skills/${SharedPreferencesHelper.getData(key: AppKeys.userId) ?? 15}');
    final response = await http.get(url);
    print(getAppliedJobResponseFromJson(response.body));
    return getAppliedJobResponseFromJson(response.body);
  }

}
