import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:isce_events/views/event_pass/event_ticket/event_access_pass_menu_tile.dart';
import 'package:isce_events/views/event_pass/event_ticket/event_ticket_card.dart';
import 'package:isce_events/views/event_pass/event_ticket/event_ticket_info_tile.dart';
import 'package:isce_events/views/event_pass/event_ticket/event_ticket_postscript_text.dart';

class EventAcessPassView extends StatelessWidget {
  const EventAcessPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('images/Logo_small.png')),
        title: Text(
          'Events',
          style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [
          Builder(builder: (BuildContext context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: Icon(
                  FontAwesome.bars_solid,
                  color: Colors.black,
                ));
          })
        ],
      ),
      // menu drawer
      endDrawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'MENU',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      FontAwesome.xmark_solid,
                      color: Colors.black,
                    ))
              ],
            )),
            EventAccessPassMenuTile(menuName: 'FOOD'),
            EventAccessPassMenuTile(menuName: 'DRINKS'),
            EventAccessPassMenuTile(menuName: 'CHAT'),
            EventAccessPassMenuTile(menuName: 'HELP'),
            EventAccessPassMenuTile(menuName: 'FEEDBACK')
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              children: [
                // the heading row
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ACCESS PASS',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 31, 31, 31),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'This ticket admits one',
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 122, 122, 122)),
                      ),
                    ],
                  ),
                ),
                EventTicketPassCard(),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EventTicketInfoTile(
                        infoHeader: 'EVENT', infoDetails: 'ISCE Events'),
                    SizedBox(
                      height: 10,
                    ),
                    EventTicketInfoTile(
                        infoHeader: 'MEMBER', infoDetails: 'David Sokeye'),
                    SizedBox(
                      height: 10,
                    ),
                    EventTicketInfoTile(
                        infoHeader: 'TICKET TYPE', infoDetails: 'VVIP Pass'),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                EventTicketPostscriptText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
