import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateEventFormHeaderText extends StatelessWidget {
  final String subText;
  const CreateEventFormHeaderText({super.key, required this.subText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Text(
        subText,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
