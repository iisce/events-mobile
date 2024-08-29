import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isce_events/blocs/app_bloc.dart';
import 'package:isce_events/events/app_event.dart';
import 'package:isce_events/loading/loading_screen.dart';
import 'package:isce_events/states/app_state.dart';
import 'package:isce_events/views/home_page_view/home_page_view.dart';
import 'package:isce_events/views/onboarding_view.dart';
import 'package:isce_events/views/registeration_views/choose_password_view.dart';
import 'package:isce_events/views/registeration_views/email_registeration_view.dart';
import 'package:isce_events/views/registeration_views/login_view.dart';
import 'package:isce_events/views/registeration_views/personal_details_view.dart';
import 'package:isce_events/views/registeration_views/registeration_view.dart';
import 'package:isce_events/views/registeration_views/upload_profile_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (_) => AppBloc()..add(const AppEventInitialise()),
        ),
      ],
      child: MaterialApp(
        title: 'Isce Event',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocConsumer<AppBloc, AppState>(
          listener: (context, appState) {
            if (appState.isLoading) {
              LoadingScreen.instance()
                  .show(context: context, text: 'Loading...');
            } else {
              LoadingScreen.instance().hide();
            }
          },
          builder: (context, appState) {
            if (appState is AppStateLoggedOut) {
              return const OnboardingView();
            } else if (appState is AppStateIsInRegisterationView) {
              return const RegisterationView();
            } else if (appState is AppStateIsInLoginView) {
              return const LoginView();
            } else if (appState is AppStateIsInEmailRegisterationView) {
              return const EmailRegisterationView();
            } else if (appState is AppStateIsInChoosePasswordView) {
              return const ChoosePasswordView();
            } else if (appState is AppStateIsInPersonalDetailsView) {
              return const PersonalDetailsView();
            } else if (appState is AppStateIsInUploadProfileImageView) {
              return const UploadProfileImageView();
            } else if (appState is AppStateLoggedIn) {
              return const HomePageView();
            } else {
              // this should never happen
              return Container();
            }
          },
        ),
      ),
    );
  }
}
