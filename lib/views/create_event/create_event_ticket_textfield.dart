import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CreateEventTicketTextfield extends HookWidget {
  final TextEditingController controller;
  final String hintText;
  final int? maxLines;
  const CreateEventTicketTextfield(
      {super.key,
      this.maxLines,
      required this.controller,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintText,
          fillColor: Colors.white,
          filled: true,
          border: InputBorder.none),
    );
  }
}
