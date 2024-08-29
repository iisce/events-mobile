import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class EventDetailsDescription extends StatelessWidget {
  final String eventImage;
  final String eventTitle;
  final String eventDescription;
  final String eventLocation;
  final String eventDate;
  const EventDetailsDescription(
      {super.key,
      required this.eventImage,
      required this.eventTitle,
      required this.eventDescription,
      required this.eventLocation,
      required this.eventDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 45, left: 16, right: 16, bottom: 16),
      height: 350,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 53, 52, 52),
          image: DecorationImage(
              image: AssetImage(eventImage), fit: BoxFit.cover, opacity: 0.5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                          height: 30,
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 247, 246, 246)),
                          child: Icon(BoxIcons.bx_chevron_left)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      eventTitle,
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  children: [
                    Icon(
                      BoxIcons.bx_search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Icon(
                      BoxIcons.bxs_category,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          SizedBox(
            width: 200,
            child: Text(
              eventDescription,
              style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 247, 246, 246)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Icon(
            Icons.location_on_outlined,
            color: Color.fromARGB(255, 247, 246, 246),
          ),
          SizedBox(
            width: 200,
            child: Text(
              eventLocation,
              style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  height: 2.5,
                  color: Color.fromARGB(255, 247, 246, 246)),
            ),
          ),
          Text(
            eventDate,
            style: GoogleFonts.poppins(
                fontSize: 14,
                height: 2,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 247, 246, 246)),
          )
        ],
      ),
    );
  }
}
