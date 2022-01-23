import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('BusGo Chat'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 0),
        child: ListView(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    /*Padding(
                      padding: const EdgeInsets.only(right: 323, top: 0),
                     /child: CustomPaint(
                        child: Container(
                          width: 15,
                          height: 10,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),*/
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const ListTile(
                        leading: Icon(
                          Icons.person_outlined,
                          size: 50,
                        ),
                        title: Text(
                          "Uber Has arrived!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Kurale-Regular',
                            fontSize: 15,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      //elevation: 20,
                      color: Colors.blueGrey,
                      margin: EdgeInsets.only(top: 0, right: 150, left: 0),
                    ),
                    SizedBox(height: 20),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const ListTile(
                        leading: Icon(
                          Icons.person,
                          size: 50,
                        ),
                        title: Text(
                          "I can find you sir!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Kurale-Regular',
                            fontSize: 15,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      elevation: 20,
                      color: Colors.brown,
                      margin: EdgeInsets.only(left: 90, right: 0),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const ListTile(
                        leading: Icon(
                          Icons.person_outlined,
                          size: 50,
                        ),
                        title: Text(
                          "Uber Has Arraived!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Kurale-Regular',
                            fontSize: 15,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      elevation: 20,
                      color: Colors.blueGrey,
                      margin: EdgeInsets.only(right: 100, left: 0),
                    ),
                    SizedBox(height: 20),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const ListTile(
                        leading: Icon(
                          Icons.person,
                          size: 50,
                        ),
                        title: Text(
                          "I still can't find you,sir! I am calling",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Kurale-Regular',
                            fontSize: 15,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      elevation: 20,
                      color: Colors.brown,
                      margin: EdgeInsets.only(left: 100, right: 0),
                    ),
                    SizedBox(
                      height: 120,
                    ),
//////////////////////////////////
                    // Column(
                    // children: [
                    Align(
                      child: Container(
                        padding: EdgeInsets.only(left: 10, bottom: 20, top: 10),
                        height: 60,
                        width: double.infinity,
                        //width: 500,

                        color: Colors.blueGrey,
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.blueGrey,
                                  size: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Write message...",
                                  hintStyle: TextStyle(color: Colors.black54),
                                  border: InputBorder.none,
                                  //border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            FloatingActionButton(
                              onPressed: () {}, //functionnnnnnn
                              child: Icon(
                                Icons.send,
                                color: Colors.blueGrey,
                                size: 18,
                              ),
                              backgroundColor: Colors.white,
                              elevation: 0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // ],
                    //),
                  ],
                ),
              ],
            ),
          ],
        ),
        //],
        //),
        // ],
        //),
      ),
    );
//        ]));
  }
}
