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
                Column(
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' 2022 Acura ILX',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text('123,تقم'),
                  ],
                ),
                //),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text("ICON PHONE"),
                Icon(
                  Icons.local_phone_outlined,
                  color: Colors.blue,
                  size: 50,
                ),
              ],
            )
          ],
        ));
  }
}

// class CustomizedIcons {
//   static const IconData phone =
//       IconData(0xf4b8, fontFamily: iconFont, fontPackage: iconFontPackage);
// }
