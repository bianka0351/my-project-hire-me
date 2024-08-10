import 'package:dartz/dartz.dart';
import 'package:hireme/presentation/authentication/data/datasource/auth_datasource.dart';
import 'package:hireme/presentation/authentication/data/models/auth_model.dart';
import 'package:hireme/presentation/user/data/models/suitable_jobs_model.dart';
import 'package:hireme/unified_api/failures.dart';
import 'package:hireme/unified_api/handling_exception_manager.dart';

import '../data_source/user_data_source.dart';

class UserRepo with HandlingExceptionManager {
  Future<Either<Failure, List<SuitableJobsModel>>> getSuitableJobs() async {
    return wrapHandling(tryCall: () async {
      final result = await UserDataSource().getSuitableJobs();
      return Right(result);
    });
  }
  }
