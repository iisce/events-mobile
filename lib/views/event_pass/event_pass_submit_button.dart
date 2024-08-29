// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventPassSubmitButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  const EventPassSubmitButton(
      {super.key, required this.buttonText, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(28)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonText,
            style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 61, 61, 61)),
          ),
        ],
      ),
    );
  }
}
