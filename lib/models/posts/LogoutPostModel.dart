import 'dart:convert';

// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

LogoutPost logoutPostFromJson(String str) {
  final jsonData = json.decode(str);
  return LogoutPost.logoutFromJson(jsonData);
}

String logoutPostToJson(LogoutPost data) {
  final dyn = data.logoutToJson();
  return json.encode(dyn);
}


List<LogoutPost> logoutAllPostsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<LogoutPost>.from(jsonData.map((x) => LogoutPost.logoutFromJson(x)));
}

String logoutAllPostsToJson(List<LogoutPost> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.logoutToJson()));
  return json.encode(dyn);
}

class LogoutPost {

  String bearer_token;

  LogoutPost({
    this.bearer_token,
  });

  factory LogoutPost.logoutFromJson(Map<String, dynamic> json) => new LogoutPost(
    bearer_token: json["bearer_token"],
  );

  Map<String, dynamic> logoutToJson() => {
    "bearer_token": bearer_token,
  };
}

