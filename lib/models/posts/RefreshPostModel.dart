import 'dart:convert';

// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

RefreshPost refreshPostFromJson(String str) {
  final jsonData = json.decode(str);
  return RefreshPost.fromJson(jsonData);
}

String refreshPostToJson(RefreshPost data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


List<RefreshPost> refreshAllPostsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<RefreshPost>.from(jsonData.map((x) => RefreshPost.fromJson(x)));
}

String refreshAllPostsToJson(List<RefreshPost> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class RefreshPost {

  String provider, refresh_token;

  RefreshPost({
    this.refresh_token,
    this.provider,
  });

  factory RefreshPost.fromJson(Map<String, dynamic> json) => new RefreshPost(
    refresh_token: json["refresh_token"],
    provider: json["provider"],
  );

  Map<String, dynamic> toJson() => {
    "refresh_token": refresh_token,
    "provider": provider,
  };
}

