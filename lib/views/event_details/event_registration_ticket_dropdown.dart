import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class EventRegistrationTicketDropdown extends StatefulWidget {
  const EventRegistrationTicketDropdown({super.key});

  @override
  State<EventRegistrationTicketDropdown> createState() =>
      _EventRegistrationTicketDropdownState();
}

class _EventRegistrationTicketDropdownState
    extends State<EventRegistrationTicketDropdown> {
  String selectedValue = 'Select ticket';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 218, 236, 248),
          borderRadius: BorderRadius.circular(6)),
      child: DropdownButton<String>(
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: <String>['Select ticket', 'Regular', 'VIP', 'VVIP']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        }).toList(),
        style: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 80, 79, 79),
        ),
        icon: Icon(FontAwesome.caret_down_solid),
        isExpanded: true,
        underline: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
