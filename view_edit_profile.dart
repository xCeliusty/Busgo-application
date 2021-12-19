import 'package:flutter/material.dart';

class ViewEditProfile extends StatefulWidget {
  const ViewEditProfile({Key? key}) : super(key: key);

  @override
  _ViewEditProfileState createState() => _ViewEditProfileState();
}

class _ViewEditProfileState extends State<ViewEditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        /*
        decoration: BoxDecoration(
            color: Colors.amber, //background color
            border: Border.all(
              color: Color(0xFFB42C2C), //dah l outline
              width: 2, //lenght l outline y3ni somko
            ),
            borderRadius: BorderRadius.all(Radius.circular(13))),
        //color: Color(0xFFFFA825),
*/
        //decoration: BoxDecoration(color: Colors.green),
        child: ListView(
          children: [
            //second [adding]
            // Padding(
            // padding: const EdgeInsets.only(left: 10),
            //child:
            // Align(
            // alignment: Alignment.centerLeft,
            //child:
            // Container(
            //backgroundColor: Colors.blueAccent,
            //child:
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    bottom: 50,
                  ),
                  child: Container(
                    //  decoration: BoxDecoration(
                    color: Colors.amber,
                    //  backgroundColor: Colors.amber,
                    child: Row(
                      //yfsl l pic 3n l kalam(car tags)
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/person2.jpg',
                              height: 90,
                            ),
                          ),
                        ), //end profile pic
                        //car model eh                //second [adding]
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Name',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                'Hagar',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ), //car model eh
                      ],
                    ),
                  ),
                ),
                /////NAME 1ST TEXT
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: "Phone number",
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      // color: Colors.amber,
                    ),
                  ),
                  //],
                  //),
                ),
                ////ENTER NAME
                TextField(
                  readOnly: true,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.amber,
                    filled: true, // To set background to light grey
                    hintText: "+201113534567",
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    //color: Colors.white,
                  ),
                ),

                /////////////////////////////////////////////////////////////
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    // bottom: 0,
                  ),
                  child:
                      // Column( children: [
                      TextField(
                    readOnly: true,
                    // textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      //fillColor: Colors.amber,
                      //filled: true, // To set background to light grey
                      hintText: "Email",
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      //color: Colors.grey
                    ),
                  ),
                  //],
                  //),
                ),
                ////ENTER NAME
                TextField(
                  readOnly: true,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.amber,
                    filled: true, // To set background to light grey
                    hintText: "Add Your Email",
                    suffixIcon: IconButton(
                      onPressed: null /*() =>_controller.clear()*/,
                      icon: Icon(Icons.create_outlined),
                    ),
                  ),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.amber),
                ),
                /////////////////////////////////////////////////////////////333333333333333
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    // bottom: 0,
                  ),
                  child:
                      // Column( children: [
                      TextField(
                    readOnly: true,
                    // textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      //fillColor: Colors.amber,
                      //filled: true, // To set background to light grey
                      hintText: "City",
                    ),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                  //],
                  //),
                ),
                ////ENTER NAME
                TextField(
                  readOnly: true,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.amber,
                    filled: true, // To set background to light grey
                    hintText: "Cairo",
                    suffixIcon: IconButton(
                      onPressed: null /*() =>_controller.clear()*/,
                      icon: Icon(Icons.create_outlined),
                    ),
                  ),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ), //////////////////////////////////////////444444444444444444
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    // bottom: 0,
                  ),
                  child:
                      // Column( children: [
                      TextField(
                    readOnly: true,
                    // textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      //fillColor: Colors.amber,
                      //filled: true, // To set background to light grey
                      hintText: "Language",
                    ),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                  //],
                  //),
                ),
                ////ENTER NAME
                TextField(
                  readOnly: true,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.amber,
                    filled: true, // To set background to light grey
                    hintText: "English",
                    suffixIcon: IconButton(
                      onPressed: null /*() =>_controller.clear()*/,
                      icon: Icon(Icons.create_outlined),
                    ),
                  ),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ],
            ),
            // ),
            ButtonBar(
              children: [
                //  TextButton(onPressed: () {}, child: Text("Cancle")),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  onPressed: () {
                    //  Navigator.pushNamed(context, '/DriverDetails1');
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(
                      fontFamily: 'Lalezar-Regular',
                      // backgroundColor: Colors.amber,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ) //car model eh
          ],
        ),
      ),
    );
  }
}
