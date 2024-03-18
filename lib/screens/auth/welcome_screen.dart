import 'package:flutter/material.dart';
import 'package:food_app/screens/auth/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  bool isLoginScreen;
  WelcomeScreen({required this.isLoginScreen, super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
