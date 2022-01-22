import 'package:busgo/drawer/drawer.dart';
import 'package:flutter/material.dart';

class TripsHistory extends StatelessWidget {
  // const TripsHistory({Key? key}) : super(key: key);
  static const routeName = "/TripsHistory";

  final trips = [
    {
      "companyName": "company name 1",
      "price": 220,
      "from": "nasr city",
      "to": "sheraton",
      "Date": "2020-07-30",
    },
    {
      "companyName": "company name 1",
      "price": 220,
      "from": "nasr city",
      "to": "sheraton",
      "Date": "2020-07-30",
    },
    {
      "companyName": "company name 1",
      "price": 220,
      "from": "nasr city",
      "to": "sheraton",
      "Date": "2020-07-30",
    },
    {
      "companyName": "company name 1",
      "price": 2200,
      "from": "nasr city",
      "to": "sheraton",
      "Date": "2020-07-30",
    },
    {
      "companyName": "company name 1",
      "price": 22,
      "from": "nasr city",
      "to": "sheraton",
      "Date": "2020-07-30",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trips History"),
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: trips.length,
            itemBuilder: (context, index) {
              return Card(
                color: Theme.of(context).accentColor,
                elevation: 10,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(50),
                // ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Text(
                            "${trips[index]["price"].toString()} LE",
                          ),
                        ),
                        title: Text(
                          trips[index]["companyName"].toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2.0),
                                  child: Text(
                                      "From: ${trips[index]["from"].toString()}"),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2.0),
                                  child: Text(
                                      "To: ${trips[index]["to"].toString()}"),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2.0),
                                  child: Text(
                                      "Date: ${trips[index]["Date"].toString()}"),
                                )
                              ],
                            )),
                      ),
                      Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 2,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Expanded(child: Icon(Icons.star)),
                            Expanded(child: Icon(Icons.star)),
                            Expanded(child: Icon(Icons.star)),
                            Expanded(child: Icon(Icons.star)),
                            Expanded(child: Icon(Icons.star)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
