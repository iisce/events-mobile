// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RegistrationProgressIndicator extends StatelessWidget {
  final int currentSteps;
  final int totalSteps;
  const RegistrationProgressIndicator(
      {super.key, required this.currentSteps, required this.totalSteps});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(totalSteps, (index) {
        return Container(
          width: 20,
          height: 20,
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: index < currentSteps ? Color.fromARGB(255, 4, 36, 63) : Colors.white,
            border: index < currentSteps ? Border.all(color: Color.fromARGB(255, 4, 36, 63)) : Border.all(color: Color.fromARGB(255, 4, 36, 63)),
          ),
        );
      }),
    );
  }
}
