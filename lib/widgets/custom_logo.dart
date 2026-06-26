import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 75),
        Image.asset(
          'assets/images/scholar.png',
        ),
        const Text(
          'Scholar Chat',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: 'pacifico',
          ),
        ),
      ],
    );
  }
}
