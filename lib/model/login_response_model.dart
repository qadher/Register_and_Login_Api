import 'dart:convert';

LoginResponseModel loginResponseJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  LoginResponseModel({
    // required this.message,
    // required this.data,
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.token,
  });
  // late final String message;
  // late final Data data;
  late final String id;
  late final String name;
  late final String email;
  late final int phone;
  late final String token;

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    // message = json['message'];
    // data = Data.fromJson(json['data']);

    id = json['_id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    // _data['message'] = message;
    // _data['data'] = data.toJson();

    _data['_id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['phone'] = phone;
    _data['token'] = token;
    return _data;
  }
}

class Data {
  Data({
    required this.username,
    required this.email,
    required this.date,
    required this.id,
    required this.token,
  });
  late final String username;
  late final String email;
  late final String date;
  late final String id;
  late final String token;

  Data.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    date = json['date'];
    id = json['id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['username'] = username;
    _data['email'] = email;
    _data['date'] = date;
    _data['id'] = id;
    _data['token'] = token;
    return _data;
  }
}




// import 'dart:convert';

// LoginResponseModel loginResponseJson(String str) =>
//     LoginResponseModel.fromJson(json.decode(str));

// class LoginResponseModel {
//   LoginResponseModel({
//     required this.message,
//     required this.data,
//   });
//   late final String message;
//   late final Data data;

//   LoginResponseModel.fromJson(Map<String, dynamic> json) {
//     message = json['message'];
//     data = Data.fromJson(json['data']);
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['message'] = message;
//     _data['data'] = data.toJson();
//     return _data;
//   }
// }

// class Data {
//   Data({
//     required this.username,
//     required this.email,
//     required this.date,
//     required this.id,
//     required this.token,
//   });
//   late final String username;
//   late final String email;
//   late final String date;
//   late final String id;
//   late final String token;

//   Data.fromJson(Map<String, dynamic> json) {
//     username = json['username'];
//     email = json['email'];
//     date = json['date'];
//     id = json['id'];
//     token = json['token'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['username'] = username;
//     _data['email'] = email;
//     _data['date'] = date;
//     _data['id'] = id;
//     _data['token'] = token;
//     return _data;
//   }
// }
