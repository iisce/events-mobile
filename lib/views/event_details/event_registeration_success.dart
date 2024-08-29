import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isce_events/views/home_page_view/home_page_view.dart';

class EventRegisterationSuccess extends StatelessWidget {
  final String eventTitle;
  final String eventDate;
  final String name;
  final String ticketType;
  final String eventImage;
  const EventRegisterationSuccess(
      {super.key,
      required this.eventTitle,
      required this.eventDate,
      required this.name,
      required this.eventImage,
      required this.ticketType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 93, 98, 105),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Registration Successful !',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 201, 201, 201),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // The barcode section
                Container(
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 41, 38, 38),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(eventImage),
                          fit: BoxFit.cover,
                          opacity: 0.1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // event title and profile picture section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.47,
                            child: Text(
                              eventTitle,
                              style: GoogleFonts.poppins(
                                  fontSize: 35,
                                  color: Color.fromARGB(255, 201, 201, 201),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'images/profile_picture.jpeg'),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        eventDate,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 201, 201, 201)),
                      ),
                      Text(
                        'David Sokeye',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 201, 201, 201),
                            height: 2.5),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        ticketType,
                        style: GoogleFonts.poppins(
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width * 0.6,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/barcode.jpeg'),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 6),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  color: Color.fromARGB(255, 61, 61, 61))
                            ]),
                        child: Text(
                          '09J4TH',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              letterSpacing: 4,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // post script section
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 85,
                    child: Text(
                      'Some extra information should be provided here for users to know what is next',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        height: 1.7,
                        color: Color.fromARGB(255, 201, 201, 201),
                      ),
                    ),
                  ),
                ),
                // Back to events button
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomePageView()),
                        (Route<dynamic> route) => false);
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 201, 201, 201),
                            width: 1.5),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Back to Events',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 201, 201, 201)),
                        ),
                      ],
                    ),
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
