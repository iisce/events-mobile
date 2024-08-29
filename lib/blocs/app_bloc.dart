import 'package:bloc/bloc.dart';
import 'package:isce_events/events/app_event.dart';
import 'package:isce_events/states/app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppStateLoggedOut(isLoading: false)) {
    // route to registeration view event handler
    on<AppEventGoToRegistrationView>(
      (event, emit) {
        emit(const AppStateIsInRegisterationView(
            isLoading: false, currentStep: 1));
      },
    );

    // route to email registeration view event handler
    on<AppEventGoToEmailRegistrationView>(
      (event, emit) {
        emit(const AppStateIsInEmailRegisterationView(
            isLoading: false, currentStep: 2));
      },
    );

    // route to choose password view
    on<AppEventGoToChoosePasswordView>(
      (event, emit) {
        emit(const AppStateIsInChoosePasswordView(
            isLoading: false, currentStep: 3));
      },
    );

    // route to add personal info view
    on<AppEventGoToAddPersonalDetailsView>(
      (event, emit) {
        emit(const AppStateIsInPersonalDetailsView(
            isLoading: false, currentStep: 4));
      },
    );

    // route for add socials view
    on<AppEventGoToAddSocialsView>(
      (event, emit) {
        emit(
            const AppStateIsInAppSocialsView(isLoading: false, currentStep: 5));
      },
    );

    // route for upload profile image view
    on<AppEventGoToUploadProfileImageView>(
      (event, emit) {
        emit(const AppStateIsInUploadProfileImageView(
            isLoading: false, currentStep: 6));
      },
    );

    // initializing the app
    on<AppEventInitialise>((event, emit) {
      emit(const AppStateLoggedOut(isLoading: false));
    });

    // Login event handler
    on<AppEventLogIn>(
      (event, emit) {
        emit(const AppStateLoggedIn(isLoading: false));
      },
    );
  }
}
