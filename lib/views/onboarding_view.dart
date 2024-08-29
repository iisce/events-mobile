// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isce_events/blocs/app_bloc.dart';
import 'package:isce_events/const.dart';
import 'package:isce_events/events/app_event.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'images/Logo_small.png',
              ),
              TextButton(
                  onPressed: () {
                    context.read<AppBloc>().add(AppEventGoToRegistrationView());
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: const Color.fromARGB(255, 4, 36, 63)),
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textAlign: TextAlign.center,
                onboardingTitleText,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 4, 36, 63)),
              ),
              Text(
                onbordingSubtitleText,
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 4, 36, 63)),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  context.read<AppBloc>().add(AppEventGoToLoginView());
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 4, 36, 63),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 4, 36, 63)),
                    borderRadius: BorderRadius.circular(6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue with',
                      style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('images/Google.png')
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
