import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hireme/presentation/authentication/data/models/auth_model.dart';
import 'package:hireme/presentation/company/screens_company/candidates/model/candidate_model.dart';
import 'package:hireme/presentation/company/screens_company/candidates/model/user_info.dart';
import 'package:hireme/unified_api/app_url.dart';
import 'package:hireme/unified_api/result_builder/result.dart';
import 'package:http/http.dart' as http;

part 'candidate_event.dart';
part 'candidate_state.dart';

class CandidateBloc extends Bloc<CandidateEvent, CandidateState> {
  CandidateBloc() : super(CandidateState()) {
    on<CandidateEvent>((event, emit) async {
      if (event is GetAllCandidates) {
        await getAllCandidates(event, emit);
      } else if (event is GetUserInfo) {
        await getUserInfo(event, emit);
      }
    });
  }

  getAllCandidates(GetAllCandidates event, Emitter<CandidateState> emit) async {
    try {
      emit(state.copyWith(candidates: Result.loading()));
      final result = await http.post(Uri.parse("${AppUrl.baseUrl}company/branch/${AuthModel.getAuthData().branchId}/main_page/"),
          body: jsonEncode({
            "city": event.city ?? "",
            "gender": event.gender ?? "",
            "job_nature": event.job_nature ?? "",
          }));
      print(result.body);
      emit(state.copyWith(
          candidates: Result.loaded(
              data: (jsonDecode(result.body)["users"] as List)
                  .map(
                    (e) => CandidateModel.fromMap(e),
                  )
                  .toList())));
    } catch (e, s) {
      print(e);
      print(s);
      emit(state.copyWith(candidates: Result.error(error: "Some thing went wrong")));
    }
  }

  getUserInfo(GetUserInfo event, Emitter<CandidateState> emit) async {
    try {
      emit(state.copyWith(userInfo: const Result.loading()));
      final result = await http.get(Uri.parse("${AppUrl.baseUrl}users/info/${event.userId}/"));
      emit(state.copyWith(userInfo: Result.loaded(data: UserInfoModel.fromJson(result.body))));
    } catch (e, s) {
      print(e);
      print(s);
      emit(state.copyWith(userInfo: Result.error(error: "Some thing went wrong")));
    }
  }
}
