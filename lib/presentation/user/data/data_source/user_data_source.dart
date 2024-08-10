import 'package:hireme/const/app_keys.dart';
import 'package:hireme/presentation/user/data/models/suitable_jobs_model.dart';
import 'package:hireme/unified_api/get_api.dart';
import 'package:shared_preferences/shared_preferences.dart';


class UserDataSource {
  Future<List<SuitableJobsModel>> getSuitableJobs() async {
    final prefs = await SharedPreferences.getInstance();
    GetApi getApi = GetApi(uri: Uri.parse('http://192.168.43.40:8000/users/${prefs.getInt(AppKeys.userId)}/suitable_jobs/'), fromJson: suitableJobsModelFromJson);
    final result = await getApi.callRequest();

    return result;
  }
}
