import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:user_repository/user_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepository userRepository;
  late final StreamSubscription<User?> _userSubscription;
  AuthBloc({
    required UserRepository myUserRepository,
  })  : userRepository = myUserRepository,
        super(const AuthState.unknown()) {
    _userSubscription = userRepository.user.listen((authUser) {
      add(AuthUserChanged(authUser));});

      on<AuthUserChanged>((event, emit) {
        if (event.user != null) {
          emit(AuthState.authenticated(event.user!));
        } else {
          emit(const AuthState.unauthenticated());
        }
      });

      @override
      // ignore: unused_element
      Future<void> close() {
        _userSubscription.cancel();
        return super.close();
      }
    }
  }
