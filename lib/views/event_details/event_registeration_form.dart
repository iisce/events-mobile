import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:isce_events/views/event_details/event_registeration_success.dart';
import 'package:isce_events/views/event_details/event_registeration_text_field.dart';
import 'package:isce_events/views/registeration_views/header_text/registration_subtext.dart';
import 'package:isce_events/views/registeration_views/registeration_views_button.dart';

class EventRegisterationForm extends StatelessWidget {
  final String eventTitle;
  final String eventDate;
  final String eventImage;
  final String eventDescription;
  const EventRegisterationForm(
      {super.key,
      required this.eventTitle,
      required this.eventDate,
      required this.eventImage,
      required this.eventDescription});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _phoneNumberController =
        TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 93, 98, 105),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // the close icon row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                BoxIcons.bx_x,
                                size: 30,
                                color: Colors.black,
                              ))
                        ],
                      ),
                      Text(
                        'Kindly fill registration form',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            height: 1.7,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      // event name and date row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            eventTitle,
                            style: GoogleFonts.poppins(
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 0, 10, 18)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            //height: 40,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 0, 10, 18),
                                borderRadius: BorderRadius.circular(23)),
                            child: Text(
                              eventDate,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      // The description row
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          eventDescription,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              height: 5),
                        ),
                      ),
                      // The image row
                      Container(
                        height: 140,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 6),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  color: Color.fromARGB(255, 61, 61, 61))
                            ],
                            image: DecorationImage(
                                image: AssetImage(eventImage),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // the form section
                      RegistrationSubtext(subText: 'Name'),
                      EventRegisterationTextField(
                          controller: _nameController,
                          validatorText: 'please enter your name',
                          hintText: ''),
                      SizedBox(
                        height: 7,
                      ),
                      RegistrationSubtext(subText: 'Email'),
                      EventRegisterationTextField(
                          controller: _emailController,
                          validatorText: 'please enter your email',
                          hintText: ''),
                      SizedBox(
                        height: 7,
                      ),
                      RegistrationSubtext(subText: 'Phone Number'),
                      EventRegisterationTextField(
                          controller: _phoneNumberController,
                          validatorText: 'please enter your phone number',
                          hintText: ''),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  EventRegisterationSuccess(
                                      eventTitle: eventTitle,
                                      eventDate: eventDate,
                                      name: _nameController.text,
                                      eventImage: eventImage,
                                      ticketType: 'VVIP Pass'),
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
                  child: RegisterationViewsButton(
                      buttonText: 'Register',
                      buttonColor: Color.fromARGB(255, 0, 10, 18)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
