import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isce_events/blocs/app_bloc.dart';
import 'package:isce_events/events/app_event.dart';
import 'package:isce_events/views/registeration_views/header_text/registration_header_text.dart';
import 'package:isce_events/views/registeration_views/header_text/skip_text_button.dart';
import 'package:isce_events/views/registeration_views/registeration_views_button.dart';

class UploadProfileImageView extends StatefulWidget {
  const UploadProfileImageView({super.key});

  @override
  State<UploadProfileImageView> createState() => _UploadProfileImageViewState();
}

class _UploadProfileImageViewState extends State<UploadProfileImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              context
                  .read<AppBloc>()
                  .add(const AppEventGoToAddPersonalDetailsView());
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Color.fromARGB(255, 4, 36, 63),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              RegistrationHeaderText(headerText: 'Upload Profile Image'),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            border: Border.all(
                                width: 1,
                                color: Color.fromARGB(63, 63, 63, 1))),
                        child: Container(
                          height: 175,
                          width: 175,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                      AssetImage('images/profile_picture.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Choose profile Image',
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 4, 36, 63),
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                      onTap: () {
                        context.read<AppBloc>().add(AppEventLogIn());
                      },
                      child: RegisterationViewsButton(buttonText: 'Done!', buttonColor: Color.fromARGB(255, 4, 36, 63),)),
                  SizedBox(
                    height: 20,
                  ),
                  SkipTextButton(buttonText: 'Skip and Complete')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
