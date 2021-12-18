import 'package:busgo/drawer/drawer.dart';
import 'package:flutter/material.dart';

class FindTrips extends StatelessWidget {
  // const FindTrips({Key? key}) : super(key: key);
  static const routeName = "/FindTrips";

  final trips = [
    {
      "companyName": "company name 1",
      "price": 220,
      "from": "nasr city",
      "to": "sheraton",
      "Date": "2020-07-30",
      "start": "6:00",
      "arrive": "8:00",
    },
    {
      "companyName": "company name 1",
      "price": 220,
      "from": "nasr city",
      "to": "sheraton",
      "Date": "2020-07-30",
      "start": "6:00",
      "arrive": "8:00",
    },
    {
      "companyName": "company name 1",
      "price": 220,
      "from": "nasr city",
      "to": "sheraton",
      "Date": "2020-07-30",
      "start": "6:00",
      "arrive": "8:00",
    },
    {
      "companyName": "company name 1",
      "price": 220,
      "from": "nasr city",
      "to": "sheraton",
      "Date": "2020-07-30",
      "start": "6:00",
      "arrive": "8:00",
    },
    {
      "companyName": "company name 1",
      "price": 220,
      "from": "nasr city",
      "to": "sheraton",
      "Date": "2020-07-30",
      "start": "6:00",
      "arrive": "8:00",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find trip"),
      ),
      drawer: AppDrawer(),
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "January 12, 2019",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Details",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              child: Card(
                color: Colors.white,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 8, bottom: 12),
                        child: Text(
                          "Select your trip",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: trips.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  color: Theme.of(context).accentColor,
                                  elevation: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          trips[index]["companyName"]
                                              .toString(),
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Divider(thickness: 3,),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            //Center Row contents horizontally,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            //Center Row contents vertically,
                                            children: [
                                              Text(
                                                trips[index]["start"].toString(),
                                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                ":",
                                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                trips[index]["arrive"].toString(),
                                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                            //Center Row contents horizontally,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            //Center Row contents vertically,
                                            children: [
                                              Text(
                                                trips[index]["from"].toString(),
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              Text(
                                                trips[index]["to"].toString(),
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(thickness: 3,),
                                        Text(
                                          "Price: ${trips[index]["price"].toString()} LE",
                                          style: TextStyle(fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
