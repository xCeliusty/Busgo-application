<<<<<<< HEAD
import 'package:busgo/authentication/auth_form.dart';
=======
import 'package:bus_go/authentication/auth_form.dart';
>>>>>>> 923f53f004a760fd8695671ee5ebf0605d47f52d
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);
<<<<<<< HEAD
  static const routeName = "/login";
=======

>>>>>>> 923f53f004a760fd8695671ee5ebf0605d47f52d
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
<<<<<<< HEAD
      body: const AuthForm(),
=======
      body: AuthForm(),
>>>>>>> 923f53f004a760fd8695671ee5ebf0605d47f52d
    );
  }
}
