import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:hireme/const/app_keys.dart';
import 'package:hireme/helper/shared_preferences_helper.dart';
import 'package:hireme/presentation/authentication/data/models/auth_model.dart';
import 'package:hireme/presentation/authentication/data/repo/auth_repo.dart';

import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      final result =
          await AuthRepo().login(event.username_or_email, event.password);
      result.fold((left) {
        BotToast.showText(text: left.message);
        emit(AuthFailure());
      }, (right) {
        SharedPreferencesHelper.saveData(key: AppKeys.userId, value: right.userId);
        return emit(AuthSuccess(auth: right));
      });
    });
    on<CreateEvent>((event, emit) async {
      emit(AuthLoading());
      final result = await AuthRepo().create(
        event.firstName,
        event.lastName,
        event.username,
        event.password,
        event.email,
        event.birthDate,
        event.address,
        event.city,
        event.educationLevel,
        event.gender,
        event.phone_number,
      );
      result.fold((left) {
        BotToast.showText(text: left.message);
        emit(AuthFailure());
      }, (right) {
        SharedPreferencesHelper.saveData(key: AppKeys.userId, value: right.userId);
        return emit(AuthSuccess(auth: right));
      });
    });
  }
}
