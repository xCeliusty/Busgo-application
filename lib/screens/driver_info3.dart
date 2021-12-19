import 'package:flutter_sliding_up_panel/flutter_sliding_up_panel.dart';
import 'package:flutter/material.dart';

class DriverDetailsTwoo extends StatefulWidget {
  final String? title;

  //final VoidCallback? onSetting;
  const DriverDetailsTwoo({Key? key, this.title}) : super(key: key);

  @override
  _DriverDetialsState createState() => _DriverDetialsState();
}

class _DriverDetialsState extends State<DriverDetailsTwoo> {
  late ScrollController scrollController;

  SlidingUpPanelController panelController = SlidingUpPanelController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
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
                        //profile pic
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            //yfsl l pic 3n l kalam(car tags)
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                padding: const EdgeInsets.only(right: 58.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      ' 2022 Acura ILX',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      '123,تقم',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ), //car model eh
                            ],
                          ),
                        ), //end ofsecond [adding]

                        ///5laasna awl row
                        ///
                        Padding(
                          //pading lil phone
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 40, bottom: 40, top: 0),
                                child: Column(
                                  children: const [
                                    IconButton(
                                      // padding: new EdgeInsets.all(0.0),
                                      // color: themeData.primaryColor,
                                      icon: Icon(
                                        Icons.local_phone_outlined,
                                        color: Colors.blueAccent,
                                        size: 65,
                                      ),
                                      onPressed: null,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                //send message
                                //text
                                padding: const EdgeInsets.only(
                                    top: 0, bottom: 30, right: 20),
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/LiveChat');
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blueAccent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        textStyle: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Mouse Memoirs',
                                        )),
                                    child: Text(
                                      'Send Message',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        //cancel part
                        Padding(
                          //text
                          padding: const EdgeInsets.only(top: 0),
                          child: ElevatedButton(
                              onPressed: () {
                                // Navigator.pushNamed(context, '/LiveChat');
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.blueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  textStyle: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Mouse Memoirs',
                                  )),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                        ), //end of pading bain l phone + message

                        /////confirm part
                      ],
                    ),
                    //color: Colors.white,
                  ),
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
