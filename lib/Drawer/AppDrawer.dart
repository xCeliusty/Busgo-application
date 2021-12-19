import 'package:bus_go/Trips/FindTrips.dart';
import 'package:bus_go/Trips/TripsHistory.dart';
import 'package:flutter/material.dart';

import '../Dashboard.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text("Bus GO"),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text("Dashboard"),
            onTap: (){
              Navigator.of(context).pushNamed(Dashboard.routeName);
            },
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.search),
            title: Text("Find Trips"),
            onTap: (){
              Navigator.of(context).pushNamed(FindTrips.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text("Trips History"),
            onTap: (){
              Navigator.of(context).pushNamed(TripsHistory.routeName);
            },
          ),

        ],
      ),
    );
  }
}
