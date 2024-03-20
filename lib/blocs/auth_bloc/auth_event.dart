part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object> get props => [];
}

class AuthUserChanged extends AuthEvent {
  final User? user;
  const AuthUserChanged(this.user);
    
}