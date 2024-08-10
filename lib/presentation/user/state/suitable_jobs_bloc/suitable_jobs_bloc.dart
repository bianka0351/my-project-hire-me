import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:meta/meta.dart';

import '../../data/models/suitable_jobs_model.dart';
import '../../data/repo/user_repo.dart';

part 'suitable_jobs_event.dart';
part 'suitable_jobs_state.dart';

class SuitableJobsBloc extends Bloc<SuitableJobsEvent, SuitableJobsState> {
  SuitableJobsBloc() : super(SuitableJobsInitial()) {

    on<SuitableJobsEvent>((event, emit) async {
      emit(SuitableJobsLoading());
      final result =
      await UserRepo().getSuitableJobs();
      result.fold((left) {
        BotToast.showText(text: left.message);
        emit(SuitableJobsFailure());
      }, (right) => emit(SuitableJobsSuccess(suitableJobs: right)));
    });
  }
}
