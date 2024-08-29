import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventTicketInfoTile extends StatelessWidget {
  final String infoHeader;
  final String infoDetails;
  const EventTicketInfoTile(
      {super.key, required this.infoHeader, required this.infoDetails});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            infoHeader,
            style: GoogleFonts.poppins(
                fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            infoDetails,
            style:
                GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 1,
            color: Color.fromARGB(255, 215, 215, 215),
            height: 0.1,
          )
        ],
      ),
    );
  }
}
