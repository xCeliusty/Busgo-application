import 'package:busgo/drawer/drawer.dart';
import 'package:flutter_sliding_up_panel/flutter_sliding_up_panel.dart';
import 'package:flutter/material.dart';

class FromTo extends StatefulWidget {
  final String? title;
  static const routeName = "/dashboard";
  //final VoidCallback? onSetting;
  const FromTo({Key? key, this.title}) : super(key: key);

  @override
  _FromToState createState() => _FromToState();
}

class _FromToState extends State<FromTo> {
  late ScrollController scrollController;
  static const routeName = "/dashboard";
  SlidingUpPanelController panelController = SlidingUpPanelController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
        title: const Text("Our Packages"),
      ),
          drawer: AppDrawer(),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/1.jpg"),
              fit: BoxFit.cover,
            )),
          ),
        ),
        SlidingUpPanelWidget(
          child: Container(
            decoration: const ShapeDecoration(
              color: Colors.blueAccent,
              shadows: [
                BoxShadow(
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                    color: const Color(0x11000000))
              ],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
            child: Column(
              children: <Widget>[
                //bar blue bare wipe up
                Container(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_upward,
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.0,
                        ),
                      ),
                      Text(
                        'swipe up',
                        style: TextStyle(
                          //swipe up
                          color: Color(0xffffffff),
                        ),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  height: 40.0,
                ),

////////////////////eli fo2 dah el 7ta l blue wipe up
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFA825), //background color
                        border: Border.all(
                          color: Color(0xFF797979), //dah l outline
                          width: 2, //lenght l outline y3ni somko
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(13))),
                    //color: Color(0xFFFFA825),

                    //decoration: BoxDecoration(color: Colors.green),
                    child: ListView(
                      children: [
                        /* TextField(
                          decoration: InputDecoration(
                            filled: true, // To set background to light grey
                            hintText: "Username",
                            //border: OutlineInputBorder(),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            hintText: "Password",
                            //border: OutlineInputBorder(),
                          ),
                        ),
                        ButtonBar(
                          children: [
                            TextButton(onPressed: () {}, child: Text("Cancle")),
                            ElevatedButton(
                                onPressed: () {}, child: Text("Next"))
                          ],
                        )*/

                        //second [adding]
                        Padding(
                          padding: const EdgeInsets.only(right: 58.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              TextField(
                                decoration: InputDecoration(
                                  filled:
                                      true, // To set background to light grey
                                  hintText: "From",
                                  //border: OutlineInputBorder(),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: "To",
                                  //border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ButtonBar(
                          children: [
                            //  TextButton(onPressed: () {}, child: Text("Cancle")),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/DriverDetails1');
                              },
                              child: Text("Next"),
                            ),
                          ],
                        ) //car model eh
                      ],
                    ),
                  ), //end ofsecond [adding]

                  //color: Colors.white,
                ),
              ],
              mainAxisSize: MainAxisSize.max,
            ),
          ),
          controlHeight: 40.0,
          anchor: 0.4,
          panelController: panelController,
          onTap: () {
            ///Customize the processing logic
            if (SlidingUpPanelStatus.anchored == panelController.status) {
              panelController.collapse();
            } else {
              panelController.anchor();
            }
          },
          enableOnTap: true, //Enable the onTap callback for control bar.
        ),
      ],
    );
  }
}
