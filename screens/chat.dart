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
        child: ListView(children: [
          Column(
            children: [
              //card shape bt3a l chatbot
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),

                //TITLE Chat BOT
                child: const ListTile(
                  title: Text(
                    "BusGo Help",
                    textAlign: TextAlign.center,
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
                    EdgeInsets.only(bottom: 30, top: 30, left: 90, right: 90),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
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
                  borderRadius: BorderRadius.circular(35),
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
                  borderRadius: BorderRadius.circular(35),
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
                  borderRadius: BorderRadius.circular(35),
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
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: 'Write a message'),
                  ),
                ),
              ),
              Padding(
                //text
                padding: const EdgeInsets.only(top: 30, bottom: 50),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/LiveChat');
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffF7E6AD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Mouse Memoirs',
                        )),
                    child: Text(
                      'Send Message',
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    )),
              ),
            ],
          )
        ]),
      ),
    );
//        ]));
  }
}
