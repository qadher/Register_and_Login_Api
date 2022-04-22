import 'package:hive/hive.dart';
part 'usermodel.g.dart';

@HiveType(typeId: 1)
class Usermodel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String email;
  @HiveField(3)
  final String phone;
  @HiveField(4)
  final String token;
  Usermodel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.token,
  });
}

