import 'package:busgo/drawer/drawer.dart';
import 'package:flutter/material.dart';

class Packages extends StatelessWidget {
  static const routeName = "/packages";

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
  ];

  Packages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Our Packages"),
      ),
      drawer: const AppDrawer(),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Expanded(
              child: Card(
                color: Colors.blueGrey,
                elevation: 10,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.only(top: 16.0, left: 12, bottom: 12),
                        child: Text(
                          "Check our new packages",
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
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        const Divider(
                                          thickness: 3,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            //Center Row contents horizontally,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            //Center Row contents vertically,
                                            children: [
                                              Text(
                                                trips[index]["start"]
                                                    .toString(),
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Text(
                                                ":",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                trips[index]["arrive"]
                                                    .toString(),
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 20.0),
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
                                                style: const TextStyle(
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                trips[index]["to"].toString(),
                                                style: const TextStyle(
                                                    fontSize: 20),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Divider(
                                          thickness: 3,
                                        ),
                                        Text(
                                          "Price: ${trips[index]["price"].toString()} LE",
                                          style: const TextStyle(fontSize: 20),
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
