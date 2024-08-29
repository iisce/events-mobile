// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:isce_events/blocs/app_bloc.dart';
import 'package:isce_events/events/app_event.dart';
import 'package:isce_events/views/registeration_views/header_text/registration_header_text.dart';
import 'package:isce_events/views/registeration_views/header_text/registration_subtext.dart';
import 'package:isce_events/views/registeration_views/registeration_views_button.dart';
import 'package:isce_events/views/registeration_views/text_fields/registration_textfield.dart';

class EmailRegisterationView extends HookWidget {
  const EmailRegisterationView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey _formkey = GlobalKey<FormState>();
    final emailController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              context.read<AppBloc>().add(const AppEventGoToRegistrationView());
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegistrationHeaderText(headerText: 'Enter Email'),
              RegistrationSubtext(subText: 'Email'),
              Form(
                  key: _formkey,
                  child: RegistrationTextfield(
                      controller: emailController,
                      validatorText: 'enter your email',
                      hintText: 'davelinus@example.com')),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    context
                        .read<AppBloc>()
                        .add(AppEventGoToChoosePasswordView());
                  },
                  child: RegisterationViewsButton(buttonText: 'Next', buttonColor: Color.fromARGB(255, 4, 36, 63),))
            ],
          ),
        ),
      ),
    );
  }
}
