import 'package:busgo/drawer/drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
    var list = FirebaseFirestore.instance.collection('packages').snapshots();
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Packages",),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Padding(
            //   padding: EdgeInsets.all(10.0),
            //   child: Text(
            //     "January 12, 2019",
            //     style: TextStyle(fontSize: 30, color: Colors.white),
            //   ),
            // ),
            // const Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: Text(
            //     "Details",
            //     style: TextStyle(fontSize: 20),
            //   ),
            // ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(top: 26.0),
                child: Card(
                  color: Colors.blueGrey,
                  elevation: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(top: 18.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Text(
                            "NEW PACKAGES",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          SizedBox(height: 16.0,),
                          StreamBuilder(
                              stream: FirebaseFirestore.instance
                                  .collection('packages')
                                  .snapshots(),
                              builder: (context,
                                  AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                                return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: streamSnapshot.data!.docs.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(26.0)
                                          ),
                                          child: Card(
                                            color: Theme.of(context).accentColor,
                                            elevation: 10,
                                            clipBehavior: Clip.antiAlias,

                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                                  ),
                                                  SizedBox(height: 8.0,),

                                                  Text(
                                                    streamSnapshot
                                                        .data!.docs[index]
                                                    ['description'],
                                                    style: const TextStyle(
                                                        fontSize: 18,
                                                        ),
                                                  ),
                                                  SizedBox(height: 8.0,),

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
                              })
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
