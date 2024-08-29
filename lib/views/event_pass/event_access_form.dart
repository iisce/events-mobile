import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isce_events/views/event_pass/event_access_details_card.dart';
import 'package:isce_events/views/event_pass/event_ticket/event_acess_pass_view.dart';
import 'package:isce_events/views/event_pass/event_pass_invitation_link_text.dart';
import 'package:isce_events/views/event_pass/event_pass_submit_button.dart';
import 'package:isce_events/views/event_pass/event_pass_token_textfield.dart';

class EventAccessForm extends StatelessWidget {
  const EventAccessForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _accessTokenController =
        TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 93, 98, 105),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 250, 248, 248),
                      borderRadius: BorderRadius.circular(19)),
                  child: Column(
                    children: [
                      // event details card
                      EventAccessDetailsCard(),
                      SizedBox(
                        height: 30,
                      ),
                      // entering access token component
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'KINDLY ENTER YOUR ACCESS TOKEN FOR THIS EVENT',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      height: 2,
                                      color: const Color.fromARGB(
                                          255, 47, 47, 47)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: EventPassTokenTextfield(
                                    controller: _accessTokenController,
                                    validatorText: 'enter your access toker',
                                    hintText: '')),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            pageBuilder: (context, animation,
                                                    secondaryAnimation) =>
                                                EventAcessPassView(),
                                            transitionsBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              const begin = Offset(0.0, -1.0);
                                              const end = Offset.zero;
                                              const curves = Curves.easeInOut;

                                              var tween =
                                                  Tween(begin: begin, end: end)
                                                      .chain(CurveTween(
                                                          curve: curves));
                                              var offsetAnimation =
                                                  animation.drive(tween);

                                              return SlideTransition(
                                                position: offsetAnimation,
                                                child: child,
                                              );
                                            }));
                                  },
                                  child: EventPassSubmitButton(
                                      buttonText: 'Next',
                                      buttonColor:
                                          Color.fromARGB(255, 13, 207, 113)),
                                ))
                          ],
                        ),
                      ),
                      // access token description text
                      SizedBox(
                        height: 20,
                      ),
                      EventPassInvitationLinkText(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
