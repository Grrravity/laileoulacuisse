import 'dart:convert';

// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

LoginPost postFromJson(String str) {
  final jsonData = json.decode(str);
  return LoginPost.fromJson(jsonData);
}

String postToJson(LoginPost data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


List<LoginPost> allPostsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<LoginPost>.from(jsonData.map((x) => LoginPost.fromJson(x)));
}

String allPostsToJson(List<LoginPost> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class LoginPost {

  String provider, password, email;

  LoginPost({
    this.email,
    this.password,
    this.provider,
  });

  factory LoginPost.fromJson(Map<String, dynamic> json) => new LoginPost(
    email: json["email"],
    password: json["password"],
    provider: json["provider"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
    "provider": provider,
  };
}

