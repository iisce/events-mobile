import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:isce_events/blocs/app_bloc.dart';
import 'package:isce_events/events/app_event.dart';
import 'package:isce_events/views/registeration_views/header_text/registration_header_text.dart';
import 'package:isce_events/views/registeration_views/header_text/registration_subtext.dart';
import 'package:isce_events/views/registeration_views/registeration_views_button.dart';
import 'package:isce_events/views/registeration_views/text_fields/registration_textfield.dart';

class ChoosePasswordView extends HookWidget {
  const ChoosePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.read<AppBloc>().add(AppEventGoToEmailRegistrationView());
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
              RegistrationHeaderText(headerText: 'Choose a Password'),
              SizedBox(
                height: 30,
              ),
              RegistrationSubtext(subText: 'Password'),
              RegistrationTextfield(
                  controller: passwordController,
                  validatorText: 'enter your password',
                  hintText: '********'),
              SizedBox(
                height: 5,
              ),
              RegistrationSubtext(subText: 'Confirm Password'),
              RegistrationTextfield(
                  controller: confirmPasswordController,
                  validatorText: 'confirm your password',
                  hintText: '********'),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () => context
                      .read<AppBloc>()
                      .add(AppEventGoToAddPersonalDetailsView()),
                  child: RegisterationViewsButton(buttonText: 'Next', buttonColor: Color.fromARGB(255, 4, 36, 63),))
            ],
          ),
        ),
      ),
    );
  }
}
