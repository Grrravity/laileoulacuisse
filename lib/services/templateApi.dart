import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:laile_ou_la_cuisse/models/posts/RegisterPostModel.dart';
import 'package:laile_ou_la_cuisse/models/posts/LoginPostModel.dart';
import 'package:laile_ou_la_cuisse/models/posts/LogoutPostModel.dart';
import 'package:laile_ou_la_cuisse/models/posts/RefreshPostModel.dart';
import 'package:laile_ou_la_cuisse/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

String url = AppStrings.getBaseAPI;


Future<List<LoginPost>> getAllPosts() async {
  final response = await http.get(url);
  print(response.body);
  return allPostsFromJson(response.body);
}

Future<LoginPost> getPost() async{
  final response = await http.get('$url/login');
  return postFromJson(response.body);
}

Future<RefreshPost> getRefreshPost() async{
  final response = await http.get('$url/refresh');
  return refreshPostFromJson(response.body);
}

Future<http.Response> createPost(LoginPost post) async{
  final response = await http.post('$url',
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader : 'application/json'
      },
      body: postToJson(post)
  );
  return response;
}

Future<http.Response> loginPost(LoginPost post) async{
  final response = await http.post('$url/login',
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader : 'application/json'
      },
      body: postToJson(post)
  );
  return response;
}
Future<http.Response> registerPost(PostRegister post) async{
  final response = await http.post('$url/register',
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader : 'application/json'
      },
      body: postRegisterToJson(post)
  );
  return response;
}

Future<http.Response> logoutPost(LogoutPost logoutPost) async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  String token = pref.getString("access_token");
  print('access is: ' + token);
  final response = await http.post('$url/logout',
      headers: {
        //HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader : 'application/json',
        //HttpHeaders.authorizationHeader : 'Bearer' + token,
      },
      body: logoutPostToJson(logoutPost)
  );
  return response;
}

Future<http.Response> refreshPost(RefreshPost post) async{
  final response = await http.post('$url/refresh',
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader : 'application/json'
      },
      body: refreshPostToJson(post)
  );
  return response;
}
