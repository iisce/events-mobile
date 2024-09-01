import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:isce_events/const.dart';
import 'package:isce_events/texts/header_text.dart';
import 'package:isce_events/views/event_pass/event_access_form.dart';
import 'package:isce_events/views/home_page_view/create_event_button.dart';
import 'package:isce_events/views/home_page_view/passed_events_tab.dart';
import 'package:isce_events/views/home_page_view/register_event_button.dart';
import 'package:isce_events/views/home_page_view/upcoming_events_tab.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HeaderText(hederText: 'Events'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              color: Color.fromARGB(255, 4, 36, 63),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      EventAccessForm(),
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
                ),
              );
            },
            icon: Icon(BoxIcons.bxs_category),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14),
                      ),
                      image: DecorationImage(
                        image: AssetImage(upcomingEvents.first['eventImage']),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 45,
                                      child: Text(
                                        upcomingEvents.first['eventTitle'],
                                        style: GoogleFonts.poppins(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      upcomingEvents.first['eventDescription'],
                                      style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      upcomingEvents.first['eventDate'],
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    RegisterEventButton(
                                      eventTitle:
                                          upcomingEvents.first['eventTitle'],
                                      eventDate:
                                          upcomingEvents.first['eventDate'],
                                      eventDescription: upcomingEvents
                                          .first['eventDescription'],
                                      eventImage:
                                          upcomingEvents.first['eventImage'],
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Free to attend',
                                      style: GoogleFonts.poppins(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CreateEventButton(),
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
          SliverFillRemaining(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(text: 'Upcoming'),
                      Tab(text: 'Past'),
                    ],
                    labelColor: Color.fromARGB(255, 16, 139, 239),
                    unselectedLabelColor: Color.fromARGB(255, 16, 139, 239),
                    unselectedLabelStyle: GoogleFonts.poppins(
                      fontSize: 21,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 16, 139, 239),
                    ),
                    labelStyle: GoogleFonts.poppins(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 16, 139, 239),
                    ),
                    indicatorColor: Color.fromARGB(255, 16, 139, 239),
                    dividerColor: Colors.transparent,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        ListView.builder(
                          itemCount: upcomingEvents.length,
                          shrinkWrap: true,
                          //physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            final event = upcomingEvents[index];
                            return UpcomingEventsTab(
                              eventTitle: event['eventTitle'],
                              eventDescription: event['eventDescription'],
                              eventImage: event['eventImage'],
                              eventLocation: event['eventLocation'],
                              eventDate: event['eventDate'],
                            );
                          },
                        ),
                        PassedEventsTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
