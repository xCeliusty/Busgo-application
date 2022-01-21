import 'package:busgo/Trips/find_trips.dart';
import 'package:busgo/Trips/tripsHistory.dart';
import 'package:busgo/packages.dart';
import 'package:busgo/screens/maps.dart';
import 'package:busgo/view_edit_profile.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text("Bus GO"),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text("Dashboard"),
            onTap: () {
              // Navigator.of(context).pushNamed(FromTo.routeName);
              Navigator.pushNamed(context, '/FromTo');
            },
          ),
          ListTile(
            leading: const Icon(Icons.search),
            title: const Text("Find Trips"),
            onTap: () {
              Navigator.of(context).pushNamed(findTrips.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text("Trips History"),
            onTap: () {
              Navigator.of(context).pushNamed(TripsHistory.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text("Packages"),
            onTap: () {
              Navigator.of(context).pushNamed(Packages.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.remove_red_eye),
            title: const Text("view edit profile"),
            onTap: () {
              Navigator.of(context).pushNamed(ViewEditProfile.routeName);
            },
          ),
        ],
      ),
    );
  }
}
