import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isce_events/const.dart';

class PassedEventsTab extends StatelessWidget {
  const PassedEventsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: PageScrollPhysics(),
      itemCount: pastEvents.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                border:
                    Border.all(width: 1, color: Color.fromARGB(63, 63, 63, 1)),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4))),
            child: Row(
              children: [
                Container(
                  height: 110,
                  width: 107,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(pastEvents[index]['eventImage']),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                // TEXT CONTENT
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Text(
                        pastEvents[index]['eventTitle'],
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 4, 36, 63),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 200,
                      child: Text(
                        pastEvents[index]['eventDescription'],
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 4, 36, 63),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          pastEvents[index]['eventDate'],
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 4, 36, 63),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        Container(
                          height: 25,
                          width: 72,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 223, 222, 222),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Missed',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontSize: 7,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 4, 36, 63)),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
