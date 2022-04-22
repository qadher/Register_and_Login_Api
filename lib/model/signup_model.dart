// ignore_for_file: public_member_api_docs, sort_constructors_first
class Signupmodel {
  final String Id;
  final String name;
  final String email;
  final String phone;
  final String token;
  Signupmodel({
    required this.Id,
    required this.name,
    required this.email,
    required this.phone,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '_id': Id,
      'name': name,
      'email': email,
      'phone': phone,
      'token': token,
    };
  }

  factory Signupmodel.fromMap(Map<String, dynamic> map) {
    return Signupmodel(
      Id: map['_id'].toString(),
      name: map['name'] as String,
      email: map['email'] as String,
      phone: map['phone'].toString(),
      token: map['token'] as String,
    );
  }
}

class Usermodel {
  final String Id;
  final String name;
  final String email;
  final String phone;
  final String token;
  Usermodel({
    required this.Id,
    required this.name,
    required this.email,
    required this.phone,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '_id': Id,
      'name': name,
      'email': email,
      'phone': phone,
      'token': token,
    };
  }

  factory Usermodel.fromjson(Map<String, dynamic> map) {
    return Usermodel(
      Id: map['_id'].toString(),
      name: map['name'] as String,
      email: map['email'] as String,
      phone: map['phone'].toString(),
      token: map['token'] as String,
    );
  }
}

