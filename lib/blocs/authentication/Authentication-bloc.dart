import 'dart:async';
import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:laile_ou_la_cuisse/models/AccessToken.dart';

import 'package:laile_ou_la_cuisse/models/User.dart';
import 'package:laile_ou_la_cuisse/models/posts/RefreshPostModel.dart';
import 'package:laile_ou_la_cuisse/blocs/authentication/Authentication-event.dart';
import 'package:laile_ou_la_cuisse/blocs/authentication/Authentication-state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:laile_ou_la_cuisse/services/templateApi.dart';

// Authentication Bloc which handles the auth state app wide
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {

  final User user;

  // Constructor
  AuthenticationBloc({@required this.user})
      : assert(user != null);

  // Auth state when the app is started
  @override
  AuthenticationState get initialState => AuthenticationUninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
    ) async* {

      SharedPreferences pref = await SharedPreferences.getInstance();

      // When the app starts we look for a refresh token
      // in order to login automatically
      if (event is AppStarted) {

        String refreshToken;

        String response_body;
        int    response_code;

        final bool hasToken = (pref.getString('refresh_token')) != null ? true: false;

        if (hasToken) {

          refreshToken = pref.getString('refresh_token');
          print("We have a token: "+ refreshToken);

          // Creating a new Post object to send it to API
          RefreshPost post = RefreshPost(
            provider: 'jobbers',
            refresh_token: refreshToken,
          );

          // Posting the refresh token to the API to login
          await refreshPost(post).then((response) {

            response_body = response.body;
            response_code = response.statusCode;

            // TODO: handle status codes properly
            if (response.statusCode > 200) {
              //print(response_body);
            }
          }).catchError((error) {
            print('Token POST refresh error : ' + error.toString());
          });

          // TODO: handle status codes properly
          // The refresh token was invalid
          if (response_code > 200){
            print('Auth failed');
            yield AuthenticationUnauthenticated();
          }

          // The refresh token was valid: the user is logged in
          else {

            AccessToken accessToken = AccessToken.fromJson(jsonDecode(response_body));

            // Saving the tokens
            savePreferences(pref, accessToken);

            yield AuthenticationAuthenticated();
          }
        }
        // There is no recorded token
        else {
          yield AuthenticationUnauthenticated();
        }
      }

      //
      if (event is LoggedIn) {

        yield AuthenticationLoading();

        AccessToken accessToken = event.accessToken;

        // Saving the token
        savePreferences(pref, accessToken);

        await user.persistUser(event.accessToken.access_token);

        yield AuthenticationAuthenticated();

        // Logs
        print('Authenticated event');
        print('Access token : ' + accessToken.toString());
      }

      //
      if (event is LoginFailed){

        yield AuthenticationUnauthenticated();

        // Logs
        print('Failed login event');
      }

      //
      if (event is LoggedOut) {

        yield AuthenticationLoading();
        await user.deleteUser();
        yield AuthenticationUninitialized();

        // Logs
        print('Logout event');
      }
  }

  // We are decoding the tokens and will sotre them in the shared preferences
  // TODO: store data properly because there is no garanty that these pref are persistent
  savePreferences(SharedPreferences pref, AccessToken accessToken){

    pref.setString('token_type',    accessToken.token_type);
    pref.setString('access_token',  accessToken.access_token);
    pref.setString('refresh_token', accessToken.refresh_token);

    pref.setInt('expires_in', accessToken.expires_in);

    print('Saved token : ' + accessToken.toString());
  }
}
