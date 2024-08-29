import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isce_events/const.dart';

class CreateEventUploadImageCard extends StatefulWidget {
  const CreateEventUploadImageCard({super.key});

  @override
  State<CreateEventUploadImageCard> createState() =>
      _CreateEventUploadImageCardState();
}

class _CreateEventUploadImageCardState
    extends State<CreateEventUploadImageCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Center(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: eventGallery.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(255, 224, 224, 224),
                          offset: Offset(0, 3),
                          blurRadius: 2,
                          spreadRadius: 2)
                    ],
                    color: eventGallery[index]['backgroundColor']),
                child: Center(
                    child: Text(
                  eventGallery[index]['imageStatus'],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 10, color: Colors.grey[500]),
                )),
              ),
            );
          },
        ),
      ),
    );
  }
}
