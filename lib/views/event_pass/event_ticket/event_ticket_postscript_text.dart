import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventTicketPostscriptText extends StatelessWidget {
  const EventTicketPostscriptText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.83,
          height: 120,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Welcome',
              style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  height: 1.7,
                  color: const Color.fromARGB(255, 41, 41, 41)),
              children: [
                TextSpan(
                  text:
                      '- Live concert for uboy holding at one of the top locations available. ',
                  style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 1.5),
                ),
                TextSpan(
                  text:
                      'This is your events profile to help cater for all your needs during this event.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
