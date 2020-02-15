import 'dart:convert';


// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

PostRegister postRegisterFromJson(String str) {
  final jsonData = json.decode(str);
  return PostRegister.registerFromJson(jsonData);
}

String postRegisterToJson(PostRegister data) {
  final dyn = data.registerToJson();
  return json.encode(dyn);
}


List<PostRegister> allPostsRegisterFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<PostRegister>.from(jsonData.map((x) => PostRegister.registerFromJson(x)));
}

String allPostsRegisterToJson(List<PostRegister> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.registerToJson()));
  return json.encode(dyn);
}

class PostRegister {

  String provider, password, passwordRepeat, email, firstName, lastName, telephone;


  PostRegister( {
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.passwordRepeat,
    this.telephone,
    this.provider,
  });

  factory PostRegister.registerFromJson(Map<String, dynamic> json) => new PostRegister(
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    password: json["password"],
    passwordRepeat: json["passwordRepeat"],
    telephone: json["telephone"],
    provider: json["provider"],
  );

  Map<String, dynamic> registerToJson() => {
    "first_name" : firstName,
    "last_name": lastName,
    "email": email,
    "password": password,
    "passwordRepeat": passwordRepeat,
    "telephone" : telephone,
    "provider": provider,
  };

  //then(Null Function(response) param0) {}

  //get then => PostRegister;


}