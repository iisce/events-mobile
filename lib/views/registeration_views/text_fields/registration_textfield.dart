import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RegistrationTextfield extends HookWidget {
  final TextEditingController controller;
  final String validatorText;
  final String hintText;
  const RegistrationTextfield(
      {super.key,
      required this.controller,
      required this.validatorText,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
              width: 1.5, color: Color.fromARGB(255, 235, 234, 234))),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return validatorText;
          }
          return null;
        },
        decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
