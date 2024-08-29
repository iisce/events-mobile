// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isce_events/blocs/app_bloc.dart';
import 'package:isce_events/const.dart';
import 'package:isce_events/events/app_event.dart';
import 'package:isce_events/views/registeration_views/registeration_views_button.dart';
import 'package:isce_events/views/registeration_views/text_fields/registration_textfield.dart';

class RegisterationView extends HookWidget {
  const RegisterationView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey _formkey = GlobalKey<FormState>();
    final isceCardNumberController = useTextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('images/Logo.png'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        registrationScreenTitle,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                height: 20,
                child: Text(
                  'ISCE card number',
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Form(
                  key: _formkey,
                  child: RegistrationTextfield(
                      controller: isceCardNumberController,
                      validatorText: 'enter your ISCE card number',
                      hintText: 'ER352663')),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () => context
                      .read<AppBloc>()
                      .add(AppEventGoToEmailRegistrationView()),
                  child: RegisterationViewsButton(buttonText: 'Get started', buttonColor: Color.fromARGB(255, 4, 36, 63),)),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('OR'),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign up with',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Image.asset('images/Google.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'to skip',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Center(
                      child: SizedBox(
                        width: 350,
                        height: 50,
                        child: Text(
                          textAlign: TextAlign.center,
                          'You may complete these six steps to easily set up your digital presence or you can skip with Google but you will have to manually populate these fields upon onboarding.',
                          style: GoogleFonts.poppins(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
