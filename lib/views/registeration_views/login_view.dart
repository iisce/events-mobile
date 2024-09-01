import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isce_events/blocs/app_bloc.dart';
import 'package:isce_events/events/app_event.dart';
import 'package:isce_events/views/registeration_views/header_text/registration_header_text.dart';
import 'package:isce_events/views/registeration_views/header_text/registration_subtext.dart';
import 'package:isce_events/views/registeration_views/registeration_views_button.dart';
import 'package:isce_events/views/registeration_views/text_fields/registration_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    bool _isChecked = false;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: RegistrationHeaderText(headerText: 'Welcome back'),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 0,
                            spreadRadius: 0,
                            color: Colors.grey)
                      ],
                      color: const Color.fromARGB(255, 220, 219, 219),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Continue with',
                        style: GoogleFonts.poppins(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('images/Google.png')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RegistrationSubtext(subText: 'Email'),
                RegistrationTextfield(
                    controller: _emailController,
                    validatorText: 'enter your email',
                    hintText: 'Enter your email'),
                SizedBox(
                  height: 10,
                ),
                RegistrationSubtext(subText: 'Password'),
                RegistrationTextfield(
                    controller: _passwordController,
                    validatorText: 'enter your password',
                    hintText: 'Enter your password'),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? newValue) {
                              setState(() {
                                _isChecked = newValue ?? false;
                              });
                            },
                            activeColor: Color.fromARGB(255, 4, 36, 63),
                            checkColor: Color.fromARGB(255, 4, 36, 63),
                            side: BorderSide(
                                color: Color.fromARGB(255, 4, 36, 63),
                                width: 2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          Text(
                            'Keep me logged in',
                            style: GoogleFonts.poppins(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 49, 49, 49)),
                          )
                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgotten Password',
                          style: GoogleFonts.poppins(
                              decoration: TextDecoration.underline,
                              decorationColor: Color.fromARGB(255, 4, 36, 63),
                              decorationThickness: 1,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 4, 36, 63)),
                        ))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    context.read<AppBloc>().add(AppEventLogIn());
                  },
                  child: RegisterationViewsButton(
                      buttonText: 'Log in',
                      buttonColor: Color.fromARGB(255, 4, 36, 63)),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Dont\'t have an account yet?',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 49, 49, 49),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          context
                              .read<AppBloc>()
                              .add(AppEventGoToRegistrationView());
                        },
                        child: Text(
                          'Create your digital lifestyle',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 4, 36, 63),
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
