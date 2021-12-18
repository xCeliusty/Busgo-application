import 'package:flutter/material.dart';

class RatingDriver extends StatefulWidget {
  const RatingDriver({Key? key}) : super(key: key);

  @override
  _RatingDriverState createState() => _RatingDriverState();
}

class _RatingDriverState extends State<RatingDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Icon(
                  Icons.cancel,
                  size: 20,
                ),
                Text(
                  "Rating",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 65),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/profile.jpeg',
                  scale: 12.2,
                ),
                Text(
                  "Name",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Mouse Memoirs',
                    fontSize: 35,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Text(
                  "Excellenet",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Mouse Memoirs',
                    fontSize: 40,
                    color: Color(0xff000000),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star_border_outlined),
                    Icon(Icons.star_border_outlined),
                    Icon(Icons.star_border_outlined),
                    Icon(Icons.star_border_outlined),
                    Icon(Icons.star_border_sharp),
                  ],
                ),
                SizedBox(height: 170),
                Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                    bottom: 50,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Color(0xff000000)),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 30,
                      ),
                    ),
                    // margin:
                    //   EdgeInsets.only(bottom: 30, top: 30, left: 90, right: 90),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
