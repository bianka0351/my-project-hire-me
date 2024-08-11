// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'candidate_bloc.dart';

class CandidateState {
  final Result<List<CandidateModel>> candidates;
  final Result<UserInfoModel> userInfo;
  CandidateState({
    this.candidates = const Result.init(),
    this.userInfo = const Result.init(),
  });

  CandidateState copyWith({
    Result<List<CandidateModel>>? candidates,
    Result<UserInfoModel>? userInfo,
  }) {
    return CandidateState(
      candidates: candidates ?? this.candidates,
      userInfo: userInfo ?? this.userInfo,
    );
  }
}
