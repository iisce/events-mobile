import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationSubtext extends StatelessWidget {
  final String subText;
  const RegistrationSubtext({super.key, required this.subText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Text(
        subText,
        style: GoogleFonts.poppins(
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
