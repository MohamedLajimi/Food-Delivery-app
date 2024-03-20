import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

part 'reset_password_bloc_event.dart';
part 'reset_password_bloc_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final UserRepository _userRepository;
  ResetPasswordBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(ResetPasswordInitial()) {
    on<ResetPasswordRequired>((event, emit) async {
      try {
        await _userRepository.resetPassword(event.email);
        emit(ResetPasswordEmailSentSuccessfully());
      } catch (e) {
        emit(ResetPasswordEmailSentFailure());
        log(e.toString());
        rethrow;
      }
    });
  }
}
