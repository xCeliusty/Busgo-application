import 'package:busgo/drawer/drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class findTripss extends StatefulWidget {
  const findTripss({Key? key}) : super(key: key);

  findTrips createState() => findTrips();
}

class findTrips extends State<findTripss> {
  static const routeName = "/FindTrips";
  var company_name;

  @override
  Widget build(BuildContext context) {
    var list = FirebaseFirestore.instance.collection('trips').snapshots();
    return Scaffold(
        backgroundColor: Colors.blueGrey[300],
        appBar: AppBar(
          title: Text("Find trip"),
        ),
        drawer: AppDrawer(),
        body: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('trips').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: streamSnapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26.0)),
                        child: Card(
                          color: Theme.of(context).accentColor,
                          elevation: 10,
                          clipBehavior: Clip.antiAlias,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    streamSnapshot.data!.docs[index]
                                        ['company_name'],
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                const Divider(
                                  thickness: 3,
                                ),
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
                                        streamSnapshot.data!.docs[index]
                                            ['first_time'],
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text(
                                        ":",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        streamSnapshot.data!.docs[index]
                                            ['last_time'],
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
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
                                        streamSnapshot.data!.docs[index]
                                            ['first_dest'],
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text(
                                        streamSnapshot.data!.docs[index]
                                            ['last_dest'],
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(
                                  thickness: 3,
                                ),
                                Center(
                                  child: Text(
                                    "Price: ${streamSnapshot.data!.docs[index]['price']} LE",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            }));
  }
}