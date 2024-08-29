import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:isce_events/const.dart';
import 'package:isce_events/views/create_event/create_event_form_header_text.dart';
import 'package:isce_events/views/create_event/create_event_ticket_textfield.dart';
import 'package:isce_events/views/create_event/create_event_upload_banner.dart';
import 'package:isce_events/views/create_event/create_event_upload_image_card.dart';
import 'package:isce_events/views/registeration_views/registeration_views_button.dart';
import 'package:isce_events/views/registeration_views/text_fields/registration_textfield.dart';

class CreateEventView extends StatefulWidget {
  const CreateEventView({super.key});

  @override
  State<CreateEventView> createState() => _CreateEventViewState();
}

class _CreateEventViewState extends State<CreateEventView> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _eventNameController = TextEditingController();
  final TextEditingController _eventDescriptionController =
      TextEditingController();
  final TextEditingController _eventDateController = TextEditingController();
  final TextEditingController _eventLocationController =
      TextEditingController();
  final TextEditingController _ticketNameController = TextEditingController();
  final TextEditingController _ticketPriceController = TextEditingController();
  final TextEditingController _totalTicketsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton.filled(
            style: IconButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 241, 238, 238)),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(BoxIcons.bx_chevron_left)),
        title: Text(
          'Create new event',
          style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CreateEventFormHeaderText(subText: 'Event Name'),
                              RegistrationTextfield(
                                  controller: _eventNameController,
                                  validatorText: 'enter event name',
                                  hintText: 'event name'),
                              SizedBox(
                                height: 15,
                              ),
                              CreateEventFormHeaderText(
                                  subText: 'Event Description'),
                              RegistrationTextfield(
                                  controller: _eventDescriptionController,
                                  validatorText: 'enter event description',
                                  hintText: 'enter event description'),
                              SizedBox(
                                height: 15,
                              ),
                              CreateEventFormHeaderText(subText: 'Event Date'),
                              RegistrationTextfield(
                                  controller: _eventDateController,
                                  validatorText: 'enter event date',
                                  hintText: '24-8-22'),
                              SizedBox(
                                height: 15,
                              ),
                              CreateEventFormHeaderText(
                                  subText: 'Event Location'),
                              RegistrationTextfield(
                                  controller: _eventLocationController,
                                  validatorText: 'enter event location',
                                  hintText: 'enter location')
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // creating tickets section
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 231, 226, 244),
                          borderRadius: BorderRadius.circular(18)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tickets',
                            style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  child: CreateEventTicketTextfield(
                                      controller: _ticketNameController,
                                      hintText: 'ticket name')),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  child: CreateEventTicketTextfield(
                                      controller: _ticketPriceController,
                                      hintText: 'price'))
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          CreateEventTicketTextfield(
                              controller: _totalTicketsController,
                              hintText: 'total in stock'),
                          SizedBox(
                            height: 15,
                          ),
                          RegisterationViewsButton(
                              buttonText: 'Save and create another event',
                              buttonColor: Colors.grey)
                        ],
                      ),
                    ),
                    // event gallery section
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CreateEventFormHeaderText(subText: 'Event Gallery'),
                        SizedBox(
                          height: 20,
                        ),
                        CreateEventUploadImageCard(),
                      ],
                    ),
                    // event banner section
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ),
            CreateEventUploadBanner(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RegisterationViewsButton(
                  buttonText: 'UPLOAD EVENT',
                  buttonColor: Color.fromARGB(255, 1, 16, 28)),
            )
          ],
        ),
      ),
    );
  }
}
