import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DriverDetailsTwo extends StatefulWidget {
  const DriverDetailsTwo({Key? key}) : super(key: key);

  @override
  _DriverDetailsState createState() => _DriverDetailsState();
}

class _DriverDetailsState extends State<DriverDetailsTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body:
            //Contianer(
            //      decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Colors.red[500],
            //   ),
            //   borderRadius: BorderRadius.all(Radius.circular(20))
            // ),
            //child: Padding(
            //child: Row([]))
            //)

            //Container(
            Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //icon
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(Icons.account_circle, size: 50),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' 2022 Acura ILX',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        '123,تقم',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Mouse Memoirs',
                        ),
                      ),
                    ],
                  ),
                ),
                //),
              ],
            ),
            // color: Colors.deepOrangeAccent,
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisSize: MainAxisSize.max,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  //BoxDecoration Widget
                  decoration: BoxDecoration(
                      //   height: 18.0,

                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFFFB74A)),

                  child: IconButton(
                    // padding: new EdgeInsets.all(0.0),
                    // color: themeData.primaryColor,
                    icon: Icon(
                      Icons.local_phone_outlined,
                      color: Colors.black,
                      size: 50,
                    ),
                    onPressed: null,
                  ),
                ),
                Padding(
                  //text
                  padding: const EdgeInsets.only(top: 30, bottom: 50),
                  child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, '/LiveChat');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFFB74A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
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
            ),

            /*
            const SizedBox(
                height: 18.0,
                width: 100.0,
                child: IconButton(
                  padding: EdgeInsets.all(0.0),
                  //  color: themeData.primaryColor,
                  icon: Icon(Icons.chat_bubble_outline, color: Colors.black),
                  onPressed: null,
                )),
                */
          ],
        ));
  }
}
