part of 'reset_password_bloc_bloc.dart';

sealed class ResetPasswordState extends Equatable {
  const ResetPasswordState();
  
  @override
  List<Object> get props => [];
}

final class ResetPasswordInitial extends ResetPasswordState {}

class ResetPasswordEmailSentSuccessfully extends ResetPasswordState{
}

class ResetPasswordEmailSentFailure extends ResetPasswordState{
}
