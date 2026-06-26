import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/custom_elevated_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 75),
              Image.asset('assets/images/scholar.png'),
              const Text(
                'Scholar Chat',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'pacifico',
                ),
              ),
              const SizedBox(height: 100),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              const SizedBox(height: 16),
              const CustomTextField(hintText: 'Email'),
              const SizedBox(height: 16),
              const CustomTextField(hintText: 'Password'),
              const SizedBox(height: 32),
              CustomElevatedButton(label: 'Sign In', onPressed: () {}),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "don't have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, kSignUpId);
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: kSignUpAndSignInTextColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
