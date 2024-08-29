import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class AppEvent {
  const AppEvent();
}

@immutable
class AppEventInitialise implements AppEvent {
  const AppEventInitialise();
}

@immutable
class AppEventGoToLoginView implements AppEvent {
  const AppEventGoToLoginView();
}

@immutable
class AppEventGoToRegistrationView implements AppEvent {
  const AppEventGoToRegistrationView();
}

@immutable
class AppEventGoToEmailRegistrationView implements AppEvent {
  const AppEventGoToEmailRegistrationView();
}

@immutable
class AppEventGoToChoosePasswordView implements AppEvent {
  const AppEventGoToChoosePasswordView();
}

@immutable
class AppEventGoToAddPersonalDetailsView implements AppEvent {
  const AppEventGoToAddPersonalDetailsView();
}

@immutable
class AppEventGoToAddSocialsView implements AppEvent {
  const AppEventGoToAddSocialsView();
}

@immutable
class AppEventGoToUploadProfileImageView implements AppEvent {
  const AppEventGoToUploadProfileImageView();
}

@immutable
class AppEventLogIn implements AppEvent {
  const AppEventLogIn();
}

@immutable
class AppEventGoToSteps implements AppEvent {
  final int steps;
  const AppEventGoToSteps(this.steps);
}
