// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterationViewsButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  const RegisterationViewsButton({super.key, required this.buttonText, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: double.infinity,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonText,
            style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: const Color.fromARGB(255, 230, 230, 230)),
          ),
        ],
      ),
    );
  }
}
