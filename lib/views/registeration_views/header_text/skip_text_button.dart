import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkipTextButton extends StatelessWidget {
  final String buttonText;
  const SkipTextButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            buttonText,
            style: GoogleFonts.poppins(
                fontSize: 12,
                color: Color.fromARGB(255, 4, 36, 63),
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
