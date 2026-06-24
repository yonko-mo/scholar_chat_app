import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/custom_elevated_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Image.asset('assets/images/scholar.png'),
            Text(
              'Scholar Chat',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'pacifico',
              ),
            ),
            Spacer(flex: 1),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sign in',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            SizedBox(height: 16),
            CustomTextField(hintText: 'Email'),
            SizedBox(height: 16),
            CustomTextField(hintText: 'Password'),
            SizedBox(height: 32),
            CustomElevatedButton(text: 'Sign In'),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "don't have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 8),
                Text('Sign Up', style: TextStyle(color: signUpTextColor)),
              ],
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
