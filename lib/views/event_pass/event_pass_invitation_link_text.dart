import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventPassInvitationLinkText extends StatelessWidget {
  const EventPassInvitationLinkText({super.key});

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
              text:
                  'An access token is required to physically access this event. If you do not have a token you can generate one now by tapping your isce card again on the event\'s barcode to redirect to its registration page. Or follow this ',
              style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  height: 1.7,
                  color: const Color.fromARGB(255, 41, 41, 41)),
              children: [
                TextSpan(
                  text: 'invitation link',
                  style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 1.5),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Your event handler here
                      print('Invitation link clicked');
                    },
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
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
