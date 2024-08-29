import 'package:flutter/foundation.dart';

@immutable
abstract class RegisterEventEvent {
  const RegisterEventEvent();
}

@immutable
class RegisterUserForEvent implements RegisterEventEvent {
  final String name;
  final String email;
  final String phoneNumber;
  final String ticket;

  const RegisterUserForEvent({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.ticket,
  });
}