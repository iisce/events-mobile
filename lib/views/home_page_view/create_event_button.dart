import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isce_events/views/create_event/create_event_view.dart';

class CreateEventButton extends StatelessWidget {
  const CreateEventButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      CreateEventView(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.easeInOut;

                    var tween = Tween(begin: begin, end: end)
                        .chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                ));
          },
          child: Container(
            width: 154,
            height: 41,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 223, 222, 222),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_circle,
                  size: 27,
                  color: const Color.fromARGB(255, 59, 242, 154),
                ),
                Text(
                  'Create Event',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 4, 36, 63)),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
