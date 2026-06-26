// ignore_for_file: use_build_context_synchronously
import 'package:chat_app/constants.dart';
import 'package:chat_app/helper/show_snack_bar.dart';
import 'package:chat_app/helper/validators.dart';
import 'package:chat_app/widgets/custom_elevated_button.dart';
import 'package:chat_app/widgets/custom_logo.dart';
import 'package:chat_app/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String? email;
  String? password;
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const CustomLogo(),
                  const SizedBox(height: 100),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    hintText: 'Email',
                    onChanged: (data) {
                      email = data;
                    },
                    validator: Validators.validateEmail,
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    hintText: 'Password',
                    onChanged: (data) {
                      password = data;
                    },
                    obSecureText: true,
                    validator: Validators.validatePassword,
                  ),
                  const SizedBox(height: 32),
                  CustomElevatedButton(
                    label: 'Sign In',
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        isLoading = true;
                        setState(() {});
                        try {
                          await signInUser();
                          showSnackBar(context, 'login success');
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            showSnackBar(
                              context,
                              'No user found for that email.',
                            );
                          } else if (e.code == 'wrong-password') {
                            showSnackBar(
                              context,
                              'Wrong password provided for that user.',
                            );
                          } else {
                            showSnackBar(
                              context,
                              e.message ?? 'Authentication failed.',
                            );
                          }
                        } catch (e) {
                          showSnackBar(
                            context,
                            'Something went wrong. Please try again.',
                          );
                        }
                        isLoading = false;
                        setState(() {});
                      } else {
                        showSnackBar(context, 'please try again');
                      }
                    },
                  ),
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
        ),
      ),
    );
  }

  Future<void> signInUser() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
