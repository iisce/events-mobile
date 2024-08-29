import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventTicketPassCard extends StatelessWidget {
  const EventTicketPassCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/event_image4.jpeg'),
              fit: BoxFit.cover,
              opacity: 0.6),
          color: Color.fromARGB(255, 71, 71, 71),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 0,
                spreadRadius: 0,
                color: Colors.grey)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '24-8-22',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 110,
                    child: Text(
                      'ISCE Events',
                      style: GoogleFonts.poppins(
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    'VVIP Pass',
                    style: GoogleFonts.poppins(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 202, 202, 202)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 130,
                    height: 43,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/barcode.jpeg'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('images/profile_picture.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 80,
                    child: Text(
                      'David Sokeye',
                      textAlign: TextAlign.end,
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 40,
                    padding: EdgeInsets.all(10),
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
              )
            ],
          )
        ],
      ),
    );
  }
}
