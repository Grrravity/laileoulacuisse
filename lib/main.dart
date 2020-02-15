import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:laile_ou_la_cuisse/components/LoadingIndicator.dart';
import 'package:laile_ou_la_cuisse/blocs/authentication/Authentication-bloc.dart';
import 'package:laile_ou_la_cuisse/blocs/authentication/Authentication-event.dart';
import 'package:laile_ou_la_cuisse/blocs/authentication/Authentication-state.dart';
import 'package:laile_ou_la_cuisse/screens/Dashboard/Dashboard.dart';
import 'package:laile_ou_la_cuisse/screens/First/First.dart';
import 'models/User.dart';

import 'package:laile_ou_la_cuisse/theme/style.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print(error);
  }
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }
}

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final user = User();
  runApp(

    MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (BuildContext context) => AuthenticationBloc(user: user)
            ..add(AppStarted()),
        ),
        BlocProvider<RegisterBloc>(
          create: (BuildContext context) => RegisterBloc(userRegister: UserRegister()),
        ),
        BlocProvider <DashboardBloc>(
          create: (BuildContext context) => Dashboard(),
        ),
        BlocProvider<AccountBloc>(
          create: (BuildContext context) => AccountBloc(),
        ),
      ],
      child: App(user: user),
    ),
  );
}

class App extends StatelessWidget {
  final User user;

  App({
    Key key,
    @required this.user
}) : super (key:key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);

    return MaterialApp(title: 'l\'aile ou la cuisse',
      home: BlocBuilder<AuthenticationBloc,AuthenticationState>(
        builder: (context, state){
          if(state is AuthenticationUninitialized){
            return LoadingIndicator();
          }
          if(state is AuthenticationAuthenticated) {
            return Dashboard();
          }
          if (state is AuthenticationUnauthenticated) {
            return First();
          }
          if (state is AuthenticationLoading) {
            return LoadingIndicator();
          }
          else {
            return First();
          }
        },
      ),
    );
  }
}