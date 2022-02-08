import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String name;
  final String username;
  String email;
  String password;
  final String Password;
  String address;
  String phone_number;
 

  User({
    required this.name,
    required this.email,
    required this.username,
    required this.password,
    required this.address,
    required this.phone_number,
    required this.Password,

  

  });
}
