import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import 'package:bloc/bloc.dart';
import 'package:laile_ou_la_cuisse/models/AccessToken.dart';
import 'package:laile_ou_la_cuisse/models/ApiResponseBody.dart';

import 'package:laile_ou_la_cuisse/models/User.dart';
import 'package:laile_ou_la_cuisse/models/posts/MenuPostModel.dart';

import 'package:laile_ou_la_cuisse/blocs/authentication/Authentication-bloc.dart';
import 'package:laile_ou_la_cuisse/blocs/authentication/Authentication-event.dart';
import 'package:laile_ou_la_cuisse/screens/Dashboard/Dashboard.dart';
import 'package:laile_ou_la_cuisse/screens/Menu/Menu-event.dart';
import 'package:laile_ou_la_cuisse/screens/Menu/Menu-state.dart';
import 'package:laile_ou_la_cuisse/services/templateApi.dart';

// Bloc class that receives the different Menu events
// It will handle the logic and output a state that will redefine the menu UI
class MenuBloc extends Bloc<MenuEvent, MenuState> {

  final User user;
  final AuthenticationBloc authenticationBloc;

  // Constructor
  MenuBloc({
    @required this.user,
    @required this.authenticationBloc,
  })
      : assert(user != null),
        assert(authenticationBloc != null);

  // UI state when the block is first created
  MenuState get initialState => MenuInitial();

  @override
  Stream<MenuState> mapEventToState(MenuEvent event) async* {

    // We condition the state change to the pressing of the menu button
    if (event is MenuButtonPressed) {

      // First, the loading state is triggered while we wait for the API's answer
      yield MenuLoading();

      // Variables to populate and use after the POST
      String message;
      bool failure;

      // TODO: implement proper validator
      if(event.usermail.length >= 6 && event.password.length >= 6){

        // The Post object to send to the API
        MenuPost post = MenuPost(
          email:    event.usermail,
          password: event.password,
          provider: 'jobbers',
        );

        // We are POSTing the data to the API and waiting for the answer
        await menuPost(post).then((response) {

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
              message = 'Oops, menu échoué';
              break;
            }

          }
        }
        ).catchError((error) {
          print('Menu POST catchError : ' + error.toString());
        });
      } else {
        message = 'Vos identifiants sont incorrectes';
        failure = true;
      }

      // We didn't manage to menu
      if(failure){
        // Updating the UI state for failure
        yield MenuFailure(error: message);

        // Making sure the Auth Bloc knows we are not authenticated
        authenticationBloc.add(MenuFailed(error: message));
      } else {
        yield MenuSuccess();
      }
    }
  }
}
