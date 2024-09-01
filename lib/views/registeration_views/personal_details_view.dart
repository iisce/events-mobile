import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:isce_events/blocs/app_bloc.dart';
import 'package:isce_events/events/app_event.dart';
import 'package:isce_events/views/registeration_views/header_text/registration_header_text.dart';
import 'package:isce_events/views/registeration_views/header_text/registration_subtext.dart';
import 'package:isce_events/views/registeration_views/header_text/skip_text_button.dart';
import 'package:isce_events/views/registeration_views/registeration_views_button.dart';
import 'package:isce_events/views/registeration_views/text_fields/registration_description_textfield.dart';
import 'package:isce_events/views/registeration_views/text_fields/registration_textfield.dart';

class PersonalDetailsView extends HookWidget {
  const PersonalDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final occupationTitleController = useTextEditingController();
    final occupationDescription = useTextEditingController();
    final contactController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              context
                  .read<AppBloc>()
                  .add(const AppEventGoToChoosePasswordView());
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Color.fromARGB(255, 4, 36, 63),
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RegistrationHeaderText(headerText: 'Your Personal Info'),
                SizedBox(
                  height: 20,
                ),
                RegistrationSubtext(subText: 'Name'),
                RegistrationTextfield(
                    controller: nameController,
                    validatorText: 'enter your name',
                    hintText: 'Dave C. Linus'),
                SizedBox(
                  height: 10,
                ),
                RegistrationSubtext(subText: 'Occupation Title'),
                RegistrationTextfield(
                    controller: occupationTitleController,
                    validatorText: 'enter your occupation',
                    hintText: 'MD/CEO Thirteen Travels And Tours'),
                SizedBox(
                  height: 10,
                ),
                RegistrationSubtext(subText: 'Occupation Description'),
                RegistrationDescriptionTextfield(
                  controller: occupationDescription,
                  validatorText: 'describe your occupation',
                  hintText: 'Your best and sure guide for travels and tourism',
                  maxLines: 3,
                ),
                SizedBox(
                  height: 10,
                ),
                RegistrationSubtext(subText: 'Contact Number'),
                RegistrationTextfield(
                    controller: contactController,
                    validatorText: 'enter your phone no',
                    hintText: '+234 807 068 2345'),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                    onTap: () {
                      context
                          .read<AppBloc>()
                          .add(AppEventGoToUploadProfileImageView());
                    },
                    child: RegisterationViewsButton(buttonText: 'Next', buttonColor: Color.fromARGB(255, 4, 36, 63),)),
                SizedBox(
                  height: 20,
                ),
                SkipTextButton(buttonText: 'Skip')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
