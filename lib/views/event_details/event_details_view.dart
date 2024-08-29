import 'package:flutter/material.dart';
import 'package:isce_events/views/event_details/event_details_description.dart';
import 'package:isce_events/views/event_details/event_registeration_form.dart';
import 'package:isce_events/views/registeration_views/registeration_views_button.dart';

class EventDetailsView extends StatelessWidget {
  final String eventImage;
  final String eventTitle;
  final String eventDescription;
  final String eventDate;
  final String eventLocation;
  const EventDetailsView(
      {super.key,
      required this.eventImage,
      required this.eventTitle,
      required this.eventDescription,
      required this.eventLocation,
      required this.eventDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              EventDetailsDescription(
                  eventImage: eventImage,
                  eventTitle: eventTitle,
                  eventDescription: eventDescription,
                  eventLocation: eventLocation,
                  eventDate: eventDate),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        EventRegisterationForm(
                                            eventTitle: eventTitle,
                                            eventDate: eventDate,
                                            eventImage: eventImage,
                                            eventDescription: eventDescription),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
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
                      child: RegisterationViewsButton(
                        buttonText: 'Register',
                        buttonColor: const Color.fromARGB(255, 1, 16, 28),
                      ),
                    ),
                    SizedBox(height: 20,),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
