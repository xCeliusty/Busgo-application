import 'package:busgo/drawer/drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Packages extends StatelessWidget {
  static const routeName = "/packages";

  Packages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = FirebaseFirestore.instance.collection('packages').snapshots();
    return Scaffold(
        backgroundColor: Colors.blueGrey[300],
        appBar: AppBar(
          title: const Text(
            "New Packages",
          ),
          centerTitle: true,
        ),
        drawer: AppDrawer(),
        body: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('packages').snapshots(),
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
                                const Text(
                                  "Package Description",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  streamSnapshot.data!.docs[index]
                                      ['description'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
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
