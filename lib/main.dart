import 'package:flutter/material.dart';
import 'package:food_app/screens/auth/login_screen.dart';
import 'package:food_app/screens/auth/register_screen.dart';
import 'package:food_app/screens/auth/welcome_screen.dart';
import 'package:food_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: WelcomeScreen(
        isLoginScreen:true
      ),
    );
  }
}
