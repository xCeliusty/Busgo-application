import 'package:flutter_sliding_up_panel/flutter_sliding_up_panel.dart';
import 'package:flutter/material.dart';

class DriverDetials extends StatefulWidget {
  final String? title;

  //final VoidCallback? onSetting;
  const DriverDetials({Key? key, this.title}) : super(key: key);

  @override
  _DriverDetialsState createState() => _DriverDetialsState();
}

class _DriverDetialsState extends State<DriverDetials> {
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
                          color: Color(0xffffffff),
                        ),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  height: 40.0,
                ),
                Flexible(
                  child: Container(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: ClipRRect(
                                  borderRadius: new BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/cars.png',
                                    height: 90,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Taxi ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      '1:55 am ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Text(
                                  'EGP 89.26 ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: ClipRRect(
                                  borderRadius: new BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/car1.jpg',
                                    height: 50,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Column(
                                  children: const [
                                    Text(
                                      'car ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      '3:55 am ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Text(
                                  'EGP 200.26 ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    color: Colors.white,
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
