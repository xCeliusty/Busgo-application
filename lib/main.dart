import 'package:busgo/authentication/auth_form.dart';
import 'package:busgo/authentication/auth_screen.dart';
import 'package:busgo/packages.dart';
import 'package:busgo/splash_screen.dart';
import 'package:busgo/view_edit_profile.dart';
import 'package:flutter/material.dart';
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
          FindTrips.routeName: (context) => FindTrips(),
          TripsHistory.routeName: (context) => TripsHistory(),
          AuthScreen.routeName: (context) => const AuthScreen(),
          Packages.routeName: (context) => Packages(),
          FromTo.routeName: (context) => const FromTo(),
           ViewEditProfile.routeName: (context) => const ViewEditProfile(),


          '/LiveChat': (context) => const Chat(),
        '/DriverDetails2': (context) => const DriverDetailsTwoo(),
        '/DriverDetails1': (context) => const DriverDetails(),
        '/FromTo': (context) => const FromTo(),
        '/Rating': (context) => const RatingDriver(),
        },
        home: const Splash(),
      );
  }
}
