import 'package:chat_app/views/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ScholarChatApp());
}

class ScholarChatApp extends StatelessWidget {
  const ScholarChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, 
    home: LoginView());
  }
}
