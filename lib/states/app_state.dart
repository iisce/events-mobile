// ignore_for_file: use_super_parameters

import 'package:flutter/foundation.dart' show immutable;
import 'package:isce_events/auth/auth_errors.dart';

@immutable
abstract class AppState {
  final bool isLoading;
  final AuthError? authError;
  final int? currentStep;

  const AppState(
      {required this.isLoading, this.authError, this.currentStep = 0});
}

@immutable
class AppStateLoggedOut extends AppState {
  const AppStateLoggedOut(
      {required bool isLoading, AuthError? authError, int? currentStep = 0})
      : super(
            isLoading: isLoading,
            authError: authError,
            currentStep: currentStep);
}

@immutable
class AppStateLoggedIn extends AppState {
  const AppStateLoggedIn(
      {required bool isLoading, AuthError? authError, int? currentStep = 0})
      : super(
            isLoading: isLoading,
            authError: authError,
            currentStep: currentStep);
}

@immutable
class AppStateIsInOnboardingView extends AppState {
  const AppStateIsInOnboardingView(
      {required bool isLoading, AuthError? authError, int? currentStep = 0})
      : super(
            isLoading: isLoading,
            authError: authError,
            currentStep: currentStep);
}

@immutable
class AppStateIsInLoginView extends AppState {
  const AppStateIsInLoginView(
      {required bool isLoading, AuthError? authError, int? currentStep = 0})
      : super(
            isLoading: isLoading,
            authError: authError,
            currentStep: currentStep);
}

@immutable
class AppStateIsInRegisterationView extends AppState {
  const AppStateIsInRegisterationView(
      {required bool isLoading, AuthError? authError, int? currentStep = 1})
      : super(
            isLoading: isLoading,
            authError: authError,
            currentStep: currentStep);
}

@immutable
class AppStateIsInEmailRegisterationView extends AppState {
  const AppStateIsInEmailRegisterationView(
      {required bool isLoading, AuthError? authError, int? currentStep = 2})
      : super(
            isLoading: isLoading,
            authError: authError,
            currentStep: currentStep);
}

@immutable
class AppStateIsInChoosePasswordView extends AppState {
  const AppStateIsInChoosePasswordView(
      {required bool isLoading, AuthError? authError, int? currentStep = 3})
      : super(
            isLoading: isLoading,
            authError: authError,
            currentStep: currentStep);
}

@immutable
class AppStateIsInPersonalDetailsView extends AppState {
  const AppStateIsInPersonalDetailsView(
      {required bool isLoading, AuthError? authError, int? currentStep = 4})
      : super(
            isLoading: isLoading,
            authError: authError,
            currentStep: currentStep);
}

@immutable
class AppStateIsInAppSocialsView extends AppState {
  const AppStateIsInAppSocialsView(
      {required bool isLoading, AuthError? authError, int? currentStep = 5})
      : super(
            isLoading: isLoading,
            authError: authError,
            currentStep: currentStep);
}

@immutable
class AppStateIsInUploadProfileImageView extends AppState {
  const AppStateIsInUploadProfileImageView(
      {required bool isLoading, AuthError? authError, int? currentStep = 6})
      : super(
            isLoading: isLoading,
            authError: authError,
            currentStep: currentStep);
}