import 'package:flutter/material.dart';

const String onboardingTitleText = 'Digitally Cultured';
const String onbordingSubtitleText = 'One Profile, Always Connected';
const String registrationScreenTitle = 'Create Your Digital Lifestyle';

final List<Map<String, dynamic>> upcomingEvents = [
  {
    'eventTitle': 'ISCE Launching',
    'eventDescription': 'Launching a digital ecosystem',
    'eventDate': '24-8-22',
    'eventImage': 'images/dashboard_image.jpeg',
    'eventLocation': '3rd floor, polystar building',
    'eventTickets': {
      'regular': {
        'ticketName': 'Regular',
        'ticketPrice': 1000,
        'totalTickets': 200,
        'soldTickets': 20
      },
      'VIP': {
        'ticketName': 'VIP',
        'ticketPrice': 10000,
        'totalTickets': 500,
        'soldTickets': 50
      },
      'VVIP': {
        'ticketName': 'VVIP',
        'ticketPrice': 100000,
        'totalTickets': 900,
        'soldTickets': 100
      },
    }
  },
  {
    'eventTitle': 'AY Live in Abuja',
    'eventDescription': 'A concert organized by imagine dragons',
    'eventDate': '24-8-22',
    'eventImage': 'images/event_image1.jpeg',
    'eventLocation': '3rd floor, polystar building',
    'eventTickets': {
      'regular': {
        'ticketName': 'Regular',
        'ticketPrice': 5000,
        'totalTickets': 500,
        'soldTickets': 50
      },
      'VIP': {
        'ticketName': 'VIP',
        'ticketPrice': 70000,
        'totalTickets': 800,
        'soldTickets': 90
      },
      'VVIP': {
        'ticketName': 'VVIP',
        'ticketPrice': 100000,
        'totalTickets': 900,
        'soldTickets': 100
      },
    }
  },
  {
    'eventTitle': 'Wedding party',
    'eventDescription':
        'John and Mary are getting married this december, join us ',
    'eventDate': '03- 07 - 22',
    'eventImage': 'images/event_image2.jpeg',
    'eventLocation': '3rd floor, polystar building',
    'eventTickets': {
      'regular': {
        'ticketName': 'Regular',
        'ticketPrice': 1000,
        'totalTickets': 200,
        'soldTickets': 20
      },
      'VIP': {
        'ticketName': 'VIP',
        'ticketPrice': 10000,
        'totalTickets': 500,
        'soldTickets': 50
      },
      'VVIP': {
        'ticketName': 'VVIP',
        'ticketPrice': 100000,
        'totalTickets': 900,
        'soldTickets': 100
      },
    }
  },
  {
    'eventTitle': 'AY Live Easter Edi',
    'eventDescription': 'Come wine and dine with us at johnny tasty events',
    'eventDate': '01- 02 - 23',
    'eventImage': 'images/event_image3.jpeg',
    'eventLocation': '3rd floor, polystar building',
    'eventTickets': {
      'regular': {
        'ticketName': 'Regular',
        'ticketPrice': 2000,
        'totalTickets': 100,
        'soldTickets': 10
      },
      'VIP': {
        'ticketName': 'VIP',
        'ticketPrice': 20000,
        'totalTickets': 600,
        'soldTickets': 100
      },
      'VVIP': {
        'ticketName': 'VVIP',
        'ticketPrice': 300000,
        'totalTickets': 900,
        'soldTickets': 100
      },
    }
  },
  {
    'eventTitle': 'Imagine Concert',
    'eventDescription': 'A concert organized by imagine dragons',
    'eventDate': '24- 08 - 22',
    'eventImage': 'images/event_image4.jpeg',
    'eventLocation': '3rd floor, polystar building',
    'eventTickets': {
      'regular': {
        'ticketName': 'Regular',
        'ticketPrice': 8000,
        'totalTickets': 300,
        'soldTickets': 100
      },
      'VIP': {
        'ticketName': 'VIP',
        'ticketPrice': 80000,
        'totalTickets': 500,
        'soldTickets': 70
      },
      'VVIP': {
        'ticketName': 'VVIP',
        'ticketPrice': 800000,
        'totalTickets': 1000,
        'soldTickets': 500
      },
    }
  },
  {
    'eventTitle': 'Imagine Concert',
    'eventDescription': 'A concert organized by imagine dragons',
    'eventDate': '24- 08 - 22',
    'eventImage': 'images/event_image4.jpeg',
    'eventLocation': '3rd floor, polystar building',
    'eventTickets': {
      'regular': {
        'ticketName': 'Regular',
        'ticketPrice': 4000,
        'totalTickets': 200,
        'soldTickets': 20
      },
      'VIP': {
        'ticketName': 'VIP',
        'ticketPrice': 90000,
        'totalTickets': 500,
        'soldTickets': 50
      },
      'VVIP': {
        'ticketName': 'VVIP',
        'ticketPrice': 800000,
        'totalTickets': 900,
        'soldTickets': 100
      },
    }
  }
];

final List<Map<String, dynamic>> pastEvents = [
  {
    'eventTitle': 'Imagine Concert',
    'eventDescription': 'A concert organized by imagine dragons',
    'eventDate': '24-8-22',
    'eventImage': 'images/event_image4.jpeg'
  },
  {
    'eventTitle': 'AY Live Easter Edi',
    'eventDescription':
        'John and Mary are getting married this december, join us ',
    'eventDate': '03- 07 - 22',
    'eventImage': 'images/event_image3.jpeg'
  },
  {
    'eventTitle': 'Wedding party',
    'eventDescription': 'Come wine and dine with us at johnny tasty events',
    'eventDate': '01- 02 - 23',
    'eventImage': 'images/event_image2.jpeg'
  },
  {
    'eventTitle': 'AY Live in Abuja',
    'eventDescription': 'A concert organized by imagine dragons',
    'eventDate': '24- 08 - 22',
    'eventImage': 'images/event_image1.jpeg'
  },
  {
    'eventTitle': 'AY Live in Abuja',
    'eventDescription': 'A concert organized by imagine dragons',
    'eventDate': '24- 08 - 22',
    'eventImage': 'images/event_image1.jpeg'
  }
];

final List<Map<String, dynamic>> eventGallery = [
  {
    'imageStatus': 'upload poster',
    'backgroundColor': Color(0xFFF5F5F5)
  },
  {
    'imageStatus': 'upload poster',
    'backgroundColor': Color(0xFFF5F5F5)
  },
  {
    'imageStatus': 'upload poster',
    'backgroundColor': Color(0xFFF5F5F5)
  },
];
