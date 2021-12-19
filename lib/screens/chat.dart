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
      backgroundColor: Colors.blueAccent,
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                //card shape bt3a l chatbot
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),

                  //TITLE Chat BOT
                  child: const ListTile(
                    title: Text(
                      "BusGo Help",
                      textAlign: TextAlign.left, //5li l klam 3la l eft 5lis
                      style: TextStyle(
                        fontFamily: 'Lalezar-Regular',
                        fontSize: 35,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  elevation: 20, //shadow bt3a l box
                  color: Color(0xffFFFFFF), //lon l card nfsaha
                  margin: //masfet l card
                      EdgeInsets.only(
                          bottom: 30, top: 30 /*, left: 90, right: 90*/
                          ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: const ListTile(
                    leading: Icon(
                      Icons.face,
                      size: 50,
                    ),
                    title: Text(
                      "Hii Rola!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Kurale-Regular',
                        fontSize: 30,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  elevation: 20,
                  color: Color(0xffFEBB39),
                  margin: EdgeInsets.only(top: 0, right: 150, left: 0),
                ),
                SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: const ListTile(
                    leading: Icon(
                      Icons.face_outlined,
                      size: 50,
                    ),
                    title: Text(
                      "How are you?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Kurale-Regular',
                        fontSize: 30,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  elevation: 20,
                  color: Color(0xffFEBB39),
                  margin: EdgeInsets.only(left: 90, right: 0),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: const ListTile(
                    leading: Icon(
                      Icons.face,
                      size: 50,
                    ),
                    title: Text(
                      "Fine and you?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Kurale-Regular',
                        fontSize: 30,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  elevation: 20,
                  color: Color(0xffFEBB39),
                  margin: EdgeInsets.only(right: 100, left: 0),
                ),
                SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: const ListTile(
                    leading: Icon(
                      Icons.face_outlined,
                      size: 50,
                    ),
                    title: Text(
                      "Fine!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Kurale-Regular',
                        fontSize: 30,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  elevation: 20,
                  color: Color(0xffFEBB39),
                  margin: EdgeInsets.only(left: 100, right: 0),
                ),
                SizedBox(
                  height: 120,
                ),
//////////////////////////////////
                // Row(
                // children: [
                Align(
                  //alignment: FractionalOffset.center,
                  //alignment: Alignment.bottomLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    height: 60,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
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
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        FloatingActionButton(
                          onPressed: () {}, //functionnnnnnn
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 18,
                          ),
                          backgroundColor: Colors.blue,
                          elevation: 0,
                        ),
                      ],
                    ),
                  ),
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
