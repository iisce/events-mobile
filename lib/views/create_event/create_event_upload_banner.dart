import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateEventUploadBanner extends StatefulWidget {
  const CreateEventUploadBanner({super.key});

  @override
  State<CreateEventUploadBanner> createState() =>
      _CreateEventUploadBannerState();
}

class _CreateEventUploadBannerState extends State<CreateEventUploadBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 71, 71, 71),
        image: DecorationImage(
            image: AssetImage('images/event_image4.jpeg'),
            fit: BoxFit.cover,
            opacity: 0.5),
      ),
      child: Text(
        'tap to change event banner',
        style: GoogleFonts.poppins(
            color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
      ),
    );
  }
}
