import 'package:chat_app/constants.dart';
import 'package:chat_app/views/login_view.dart';
import 'package:chat_app/views/signup_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ScholarChatApp());
}

class ScholarChatApp extends StatelessWidget {
  const ScholarChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        kLoginId:(context) => LoginView(),
        kSignUpId: (context) => SignUpView(),
      },
      initialRoute: kLoginId,
    );
  }
}
