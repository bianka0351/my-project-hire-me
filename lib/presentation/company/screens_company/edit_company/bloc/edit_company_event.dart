// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'edit_company_bloc.dart';

abstract class EditCompanyEvent {}

class GetComanyInfo extends EditCompanyEvent {}

class EditCompanyInfo extends EditCompanyEvent {
  final CompanyInfoModel info;
  EditCompanyInfo({
    required this.info,
  });
}
