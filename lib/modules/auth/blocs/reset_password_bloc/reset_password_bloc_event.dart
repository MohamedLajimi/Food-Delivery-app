part of 'reset_password_bloc_bloc.dart';

sealed class ResetPasswordEvent extends Equatable {
  const ResetPasswordEvent();

  @override
  List<Object> get props => [];
}

class ResetPasswordRequired extends ResetPasswordEvent {
  final String email;
  const ResetPasswordRequired(this.email);
}
