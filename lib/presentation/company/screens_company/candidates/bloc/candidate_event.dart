// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'candidate_bloc.dart';

abstract class CandidateEvent {}

class GetAllCandidates extends CandidateEvent {
  final String? city;
  final String? gender;
  final String? job_nature;
  GetAllCandidates({
    this.city,
    this.gender,
    this.job_nature,
  });
}

class GetUserInfo extends CandidateEvent {
  final int userId;
  GetUserInfo({
    required this.userId,
  });
}
