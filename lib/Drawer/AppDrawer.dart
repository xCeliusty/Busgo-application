
import 'package:busgo/Trips/findTrips.dart';
import 'package:busgo/Trips/tripsHistory.dart';
import 'package:busgo/packages.dart';
import 'package:busgo/screens/maps.dart';
import 'package:flutter/material.dart';

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
              Navigator.of(context).pushNamed(FromTo.routeName);
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
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text("Packages"),
            onTap: (){
              Navigator.of(context).pushNamed(Packages.routeName);
            },
          ),

        ],
      ),
    );
  }
}
