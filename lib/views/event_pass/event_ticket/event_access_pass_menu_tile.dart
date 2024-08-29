import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventAccessPassMenuTile extends StatelessWidget {
  final String menuName;
  final VoidCallback? onTap;
  const EventAccessPassMenuTile(
      {super.key, required this.menuName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            menuName,
            style: GoogleFonts.poppins(
                fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          onTap: onTap,
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          thickness: 1,
          color: Color.fromARGB(255, 215, 215, 215),
          height: 0.1,
        ),
      ],
    );
  }
}
