<<<<<<< HEAD
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

=======
import 'package:bus_go/Trips/FindTrips.dart';
import 'package:bus_go/Trips/TripsHistory.dart';
import 'package:bus_go/authentication/auth_form.dart';
import 'package:bus_go/authentication/auth_screen.dart';
import 'package:flutter/material.dart';

import 'Dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
>>>>>>> 923f53f004a760fd8695671ee5ebf0605d47f52d
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
<<<<<<< HEAD
          theme: ThemeData(
=======
        theme: ThemeData(
>>>>>>> 923f53f004a760fd8695671ee5ebf0605d47f52d
          primarySwatch: Colors.blue,
          accentColor: Colors.orangeAccent,
        ),
        routes: {
<<<<<<< HEAD
          Dashboard.routeName: (context) => const Dashboard(),
          FindTrips.routeName: (context) => FindTrips(),
          TripsHistory.routeName: (context) => TripsHistory(),
          AuthScreen.routeName: (context) => const AuthScreen(),
          Packages.routeName: (context) => Packages(),
        },
        home: const Splash(),
      );
=======
          Dashboard.routeName: (context) => Dashboard(),
          FindTrips.routeName: (context) => FindTrips(),
          TripsHistory.routeName: (context) => TripsHistory(),
        },
        home: AuthScreen());
>>>>>>> 923f53f004a760fd8695671ee5ebf0605d47f52d
  }
}
