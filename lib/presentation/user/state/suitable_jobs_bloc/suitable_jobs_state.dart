part of 'suitable_jobs_bloc.dart';

@immutable
abstract class SuitableJobsState {}

class SuitableJobsInitial extends SuitableJobsState {}

class SuitableJobsLoading extends SuitableJobsState {}

class SuitableJobsSuccess extends SuitableJobsState {
  final List<SuitableJobsModel>? suitableJobs;
  SuitableJobsSuccess({
    this.suitableJobs,
  });
}

class SuitableJobsFailure extends SuitableJobsState {}
