import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/components/common_button.dart';
import 'package:food_app/components/common_text_field.dart';
import 'package:food_app/modules/auth/blocs/sign_up_bloc/sign_up_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
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
                        controller: nameController,
                        hintText: 'Full Name',
                        obscureText: false),
                    const SizedBox(
                      height: 10,
                    ),
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
                          if (_formkey.currentState!.validate()) {
                            context.read<SignUpBloc>().add(SignUpRequired(
                                nameController.text,
                                emailController.text,
                                passwordController.text));
                          }
                        },
                        text: 'Sign Up'),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account ?',
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Login Now',
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
