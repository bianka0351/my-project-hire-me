import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hireme/presentation/authentication/data/models/auth_model.dart';
import 'package:hireme/presentation/company/screens_company/edit_company/model/company_info.dart';
import 'package:hireme/unified_api/app_url.dart';
import 'package:hireme/unified_api/result_builder/result.dart';
import 'package:http/http.dart' as http;

part 'edit_company_event.dart';
part 'edit_company_state.dart';

class EditCompanyBloc extends Bloc<EditCompanyEvent, EditCompanyState> {
  EditCompanyBloc() : super(EditCompanyState()) {
    on<EditCompanyEvent>((event, emit) async {
      if (event is GetComanyInfo) {
        await getCompanyInfo(event, emit);
      } else if (event is EditCompanyInfo) {
        await editCompanyInfo(event, emit);
      }
    });
  }

  getCompanyInfo(GetComanyInfo event, Emitter<EditCompanyState> emit) async {
    try {
      emit(state.copyWith(companyInfoResult: Result.loading()));
      final result = await http.get(Uri.parse("${AppUrl.baseUrl}company/branch/${AuthModel.getAuthData().branchId}/"));
      emit(state.copyWith(companyInfoResult: Result.loaded(data: CompanyInfoModel.fromJson(result.body))));
    } catch (e, s) {
      print(e);
      print(s);
      emit(state.copyWith(companyInfoResult: Result.error(error: "Some thing went wrong")));
    }
  }

  editCompanyInfo(EditCompanyInfo event, Emitter<EditCompanyState> emit) async {
    try {
      BotToast.showLoading();
      final result = await http.post(
        Uri.parse("${AppUrl.baseUrl}/company/branch/update${AuthModel.getAuthData().branchId}/"),
        body: event.info.toJson(),
      );
      BotToast.showText(text: "Edit done successfully");
    } catch (e, s) {
      print(e);
      print(s);
      emit(state.copyWith(companyInfoResult: Result.error(error: "Some thing went wrong")));
    } finally {
      BotToast.closeAllLoading();
    }
  }
}
