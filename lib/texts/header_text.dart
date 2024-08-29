import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderText extends StatelessWidget {
  final String hederText;
  const HeaderText({super.key, required this.hederText});

  @override
  Widget build(BuildContext context) {
    return Text(
      hederText,
      style: GoogleFonts.poppins(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: Color.fromARGB(255, 4, 36, 63),
      ),
    );
  }
}
