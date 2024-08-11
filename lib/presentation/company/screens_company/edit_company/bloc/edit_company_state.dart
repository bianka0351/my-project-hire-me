// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'edit_company_bloc.dart';

class EditCompanyState {
  final Result<CompanyInfoModel> companyInfoResult;
  EditCompanyState({
    this.companyInfoResult = const Result.init(),
  });

  EditCompanyState copyWith({
    Result<CompanyInfoModel>? companyInfoResult,
  }) {
    return EditCompanyState(
      companyInfoResult: companyInfoResult ?? this.companyInfoResult,
    );
  }
}
