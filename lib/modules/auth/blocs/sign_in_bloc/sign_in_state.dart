part of 'sign_in_bloc.dart';

sealed class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

final class SignInInitial extends SignInState {}

class SignInProcess extends SignInSuccess {}

class SignInSuccess extends SignInState {}

class SiginInFailure extends SignInState {
  final String errorMessage;
  const SiginInFailure(this.errorMessage);
}
