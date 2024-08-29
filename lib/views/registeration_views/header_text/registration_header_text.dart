import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationHeaderText extends StatelessWidget {
  final String headerText;
  const RegistrationHeaderText({super.key, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 50,
          child: Text(
            headerText,
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ],
    );
  }
}
