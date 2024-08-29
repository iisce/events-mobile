import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventAccessDetailsCard extends StatelessWidget {
  const EventAccessDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      width: double.infinity,
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/event_image4.jpeg'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 0,
                spreadRadius: 0,
                color: Colors.grey)
          ]),
      child: Column(
        children: [
          // event Date section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 21, 38),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    '24-8-22',
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ISCE Events',
                  style: GoogleFonts.poppins(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 250,
                    child: Text(
                      'Live concert for uboy holding at one of the top locations available.',
                      style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          height: 1.7),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
