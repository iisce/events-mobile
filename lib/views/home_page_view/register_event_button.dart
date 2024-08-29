import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isce_events/views/event_details/event_registeration_form.dart';

class RegisterEventButton extends StatelessWidget {
  final String eventTitle;
  final String eventDate;
  final String eventDescription;
  final String eventImage;
  const RegisterEventButton(
      {super.key,
      required this.eventTitle,
      required this.eventDate,
      required this.eventDescription,
      required this.eventImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    EventRegisterationForm(
                        eventTitle: eventTitle,
                        eventDate: eventDate,
                        eventImage: eventImage,
                        eventDescription: eventDescription),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(0.0, -1.0);
                  const end = Offset.zero;
                  const curves = Curves.easeInOut;

                  var tween = Tween(begin: begin, end: end)
                      .chain(CurveTween(curve: curves));
                  var offsetAnimation = animation.drive(tween);

                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                }));
      },
      child: Container(
        height: 43,
        width: 110,
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1.5, color: Colors.blue)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Register',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
