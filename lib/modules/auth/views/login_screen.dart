import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/components/common_button.dart';
import 'package:food_app/components/common_text_field.dart';
import 'package:food_app/modules/auth/views/register_screen.dart';
import 'package:food_app/modules/home_screen.dart';

import '../../../blocs/auth_bloc/auth_bloc.dart';
import '../blocs/sign_up_bloc/sign_up_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: SingleChildScrollView(
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Food Delivery App',
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 50,
            ),
            Form(
                key: _formkey,
                child: Column(
                  children: [
                    CommonTextField(
                        controller: emailController,
                        hintText: 'Email',
                        obscureText: false),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonTextField(
                        controller: passwordController,
                        hintText: 'Password',
                        obscureText: true),
                    const SizedBox(
                      height: 25,
                    ),
                    CommonButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ));
                        },
                        text: 'Sign In'),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not a member ?',
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BlocProvider(
                              create: (context) => SignUpBloc(userRepository: context.read<AuthBloc>().userRepository),
                              child: const RegisterScreen(),
                            ),));
                          },
                          child: Text(
                            'Register Now',
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.inversePrimary,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ))
                    ],
                  ),
          )),
    );
  }
}
