import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/modules/auth/views/login_screen.dart';
import 'package:food_app/modules/home_screen.dart';
import 'blocs/auth_bloc/auth_bloc.dart';
import 'blocs/theme_bloc/theme_bloc.dart';
import 'themes/dark_theme.dart';
import 'themes/light_theme.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Food App',
            theme: lightMode,
            darkTheme: darkMode,
            themeMode: state,
            home: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state.status == AuthStatus.authenticated) {
                  return const HomeScreen();
                } else {
                  return const LoginScreen();
                }
              },
            ),
          );
        },
      ),
    );
  }
}
