import 'package:busgo/authentication/auth_form.dart';
import 'package:busgo/authentication/auth_screen.dart';
import 'package:busgo/packages.dart';
import 'package:busgo/splash_screen.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'Trips/findTrips.dart';
import 'Trips/tripsHistory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
          theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.orangeAccent,
        ),
        routes: {
          Dashboard.routeName: (context) => const Dashboard(),
          FindTrips.routeName: (context) => FindTrips(),
          TripsHistory.routeName: (context) => TripsHistory(),
          AuthScreen.routeName: (context) => const AuthScreen(),
          Packages.routeName: (context) => Packages(),
        },
        home: const Splash(),
      );
  }
}
