import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import 'package:bloc/bloc.dart';
import 'package:laile_ou_la_cuisse/models/AccessToken.dart';
import 'package:laile_ou_la_cuisse/models/ApiResponseBody.dart';

import 'package:laile_ou_la_cuisse/models/User.dart';
import 'package:laile_ou_la_cuisse/models/posts/LoginPostModel.dart';

import 'package:laile_ou_la_cuisse/blocs/authentication/Authentication-bloc.dart';
import 'package:laile_ou_la_cuisse/blocs/authentication/Authentication-event.dart';
import 'package:laile_ou_la_cuisse/screens/Dashboard/Dashboard.dart';
import 'package:laile_ou_la_cuisse/screens/Login/Login-event.dart';
import 'package:laile_ou_la_cuisse/screens/Login/Login-state.dart';
import 'package:laile_ou_la_cuisse/services/templateApi.dart';

// Bloc class that receives the different Login events
// It will handle the logic and output a state that will redefine the login UI
class LoginBloc extends Bloc<LoginEvent, LoginState> {

  final User user;
  final AuthenticationBloc authenticationBloc;

  // Constructor
  LoginBloc({
    @required this.user,
    @required this.authenticationBloc,
  })
      : assert(user != null),
        assert(authenticationBloc != null);

  // UI state when the block is first created
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {

    // We condition the state change to the pressing of the login button
    if (event is LoginButtonPressed) {

      // First, the loading state is triggered while we wait for the API's answer
      yield LoginLoading();

      // Variables to populate and use after the POST
      String message;
      bool failure;

      // TODO: implement proper validator
      if(event.usermail.length >= 6 && event.password.length >= 6){

        // The Post object to send to the API
        LoginPost post = LoginPost(
          email:    event.usermail,
          password: event.password,
          provider: 'jobbers',
        );

        // We are POSTing the data to the API and waiting for the answer
        await loginPost(post).then((response) {

          // TODO: Handle the body message structure properly
          ApiResponseBody response_body = ApiResponseBody.fromJson(jsonDecode(response.body));

          // Log for debugging
          print("Response code: " + response.statusCode.toString());
          print("Response body message: " + response.body);

          // TODO: Let's switch the responses codes here
          switch(response.statusCode) {

            // The user was logged in successfully
            case 200:{

              failure = false;

              // Decoding the JSON for the tokens
              AccessToken accessToken = AccessToken.fromJson(jsonDecode(response.body));

              // We are now authenticated, updating the state of the Auth Bloc
              authenticationBloc.add(LoggedIn(accessToken: accessToken));
              break;
            }


            // Wrong credentials
            case 401:{
              bool failure   = true;
              message = 'Oops, identifiants incorrects';
              break;
            }


            // Problèmes de validation
            case 422:{
              bool failure   = true;
              message = 'Oops, identifiants invalides';
              break;
            }


            // Autre problème
            default:{
              bool failure   = true;
              message = 'Oops, login échoué';
              break;
            }

          }
        }
        ).catchError((error) {
          print('Login POST catchError : ' + error.toString());
        });
      } else {
        message = 'Vos identifiants sont incorrectes';
        failure = true;
      }

      // We didn't manage to login
      if(failure){
        // Updating the UI state for failure
        yield LoginFailure(error: message);

        // Making sure the Auth Bloc knows we are not authenticated
        authenticationBloc.add(LoginFailed(error: message));
      } else {
        yield LoginSuccess();
      }
    }
  }
}
