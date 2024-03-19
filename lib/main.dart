import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/screens/auth/welcome_screen.dart';
import 'package:food_app/themes/dark_theme.dart';
import 'package:food_app/themes/light_theme.dart';
import 'blocs/theme_bloc/theme_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
            home: const WelcomeScreen(),
          );
        },
      ),
    );
  }
}
