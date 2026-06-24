import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  const CustomElevatedButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Colors.white,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: Color(0xff274460), fontSize: 18),
        ),
      ),
    );
  }
}
