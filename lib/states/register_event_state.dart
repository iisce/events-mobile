// ignore_for_file: use_super_parameters

import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class RegisterEventState {
  final bool isLoading;
  const RegisterEventState({required this.isLoading});
}

@immutable
class RegisterEventFormState extends RegisterEventState {
  const RegisterEventFormState({required bool isLoading})
      : super(isLoading: isLoading);
}
