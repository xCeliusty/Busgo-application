import 'package:busgo/authentication/auth_form.dart';
import 'package:busgo/authentication/auth_screen.dart';
import 'package:busgo/trips/packages.dart';
import 'package:busgo/screens/maps.dart';
import 'package:busgo/pages/splash_screen.dart';
import 'package:busgo/pages/view_edit_profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Trips/find_trips.dart';
import 'Trips/tripsHistory.dart';
import './screens/chat.dart';
import './screens/DriverDetails.dart';
import './screens/rating_driver.dart';
import './screens/DriverDetailsTwoo.dart';
import './screens/maps.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.white,
      ),
      routes: {
        findTrips.routeName: (context) => const findTripss(),
        Packages.routeName: (context) => Packages(),
        TripsHistory.routeName: (context) => TripsHistory(),
        AuthScreen.routeName: (BuildContext context) {
          return const AuthScreen();
        },
        
        //FromTo.routeName: (context) => const FromTo(),
        ViewEditProfile.routeName: (context) => const ViewEditProfile(),
        '/LiveChat': (context) => const Chat(),
        '/DriverDetails2': (context) => const DriverDetailsTwoo(),
        '/DriverDetails1': (context) => DriverDetails(),
        '/FromTo': (context) => FromTo(),
        '/Rating': (context) => const RatingDriver(),
      },
      //home: const Splash(),
      home: FromTo(),
    );
  }
}
