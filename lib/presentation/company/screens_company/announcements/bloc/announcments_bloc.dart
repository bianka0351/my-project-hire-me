import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:hireme/presentation/authentication/data/models/auth_model.dart';
import 'package:hireme/presentation/company/screens_company/announcements/model/announcment_model.dart';
import 'package:hireme/presentation/company/screens_company/announcements/praam/add_announcment_param.dart';
import 'package:hireme/unified_api/app_url.dart';
import 'package:hireme/unified_api/get_api.dart';
import 'package:hireme/unified_api/result_builder/result.dart';
import 'package:meta/meta.dart';
import 'package:hireme/unified_api/handling_exception_manager.dart';
import 'package:http/http.dart' as http;

part 'announcments_event.dart';
part 'announcments_state.dart';

class AnnouncmentsBloc extends Bloc<AnnouncmentsEvent, AnnouncmentsState> with HandlingExceptionManager {
  AnnouncmentsBloc() : super(AnnouncmentsState()) {
    on<AnnouncmentsEvent>((event, emit) async {
      if (event is GetAllAnnouncments) {
        await getAllAnnouncments(event, emit);
      } else if (event is AddNewJobAnnounce) {
        await addNewJobAnnounce(event, emit);
      }
    });
  }

  getAllAnnouncments(GetAllAnnouncments event, Emitter<AnnouncmentsState> emit) async {
    emit(state.copyWith(announcments: const Result.loading()));
    try {
      final result = await http.get(Uri.parse("${AppUrl.baseUrl}job/branch/job_announcements/${AuthModel.getAuthData().branchId}/"));
      List<AnnouncmentModel> announcments = (jsonDecode(result.body)["jobs"] as List)
          .map(
            (e) => AnnouncmentModel.fromMap(e),
          )
          .toList();
      emit(state.copyWith(announcments: Result.loaded(data: announcments)));
    } catch (e, s) {
      emit(state.copyWith(announcments: const Result.error(error: "some thing went wrong")));
      print(e);
      print(s);
    }
  }

  addNewJobAnnounce(AddNewJobAnnounce event, Emitter<AnnouncmentsState> emit) async {
    try {
      BotToast.showLoading();
      await http.post(
        Uri.parse("${AppUrl.baseUrl}job/create_job/"),
        body: event.param.toJson(),
      );
      BotToast.showText(text: "تمت الإضافة بنجاح");
    } catch (e) {
      BotToast.showText(text: "حدث خطأ ما");
    } finally {
      BotToast.closeAllLoading();
    }
  }
}
