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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.orangeAccent,
        ),
        routes: {
          Dashboard.routeName: (context) => Dashboard(),
          FindTrips.routeName: (context) => FindTrips(),
          TripsHistory.routeName: (context) => TripsHistory(),
        },
        home: AuthScreen());
  }
}
