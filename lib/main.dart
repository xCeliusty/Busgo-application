import 'package:busgo/authentication/auth_form.dart';
import 'package:busgo/authentication/auth_screen.dart';
import 'package:busgo/packages.dart';
import 'package:busgo/splash_screen.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'Trips/findTrips.dart';
import 'Trips/tripsHistory.dart';

import './screens/chat.dart';
import './screens/driver_info.dart';
import './screens/rating_driver.dart';
import './screens/driver_info3.dart';
import './screens/maps.dart';

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

          '/LiveChat': (context) => Chat(),
        '/DriverDetails2': (context) => DriverDetailsTwoo(),
        '/DriverDetails1': (context) => DriverDetails(),
        '/FromTo': (context) => FromTo(),
        '/Rating': (context) => RatingDriver(),
        },
        home: const Splash(),
      );
  }
}
