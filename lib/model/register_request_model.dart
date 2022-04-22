class RegisterRequestModel {
  RegisterRequestModel({
    this.name,
    this.password,
    this.email,
    this.phone,
  });
  late final String? name;
  late final String? email;
  late final String? password;
  late final String? phone;
  

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['email'] = email;
    _data['password'] = password;
    _data['phone'] = phone;
    return _data;
  }
}
