import 'package:busgo/admin/add_trip_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin"),
        centerTitle: true,
      ),
       body: Padding(
         padding: const EdgeInsets.all(16.0),
         child: Container(

           child: Column(
      children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: Container(
                    width: double.infinity,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0) ,
                      color: Colors.grey[200],

                    ),
      child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_circle,size: 36.0,color: Colors.blue,),
                    SizedBox(height: 16.0,),
                    Text('Add Trip',
                    style: TextStyle(fontSize: 25.0,),),
                  ],
      ),
      ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddTripScreen()),
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0) ,
                    color: Colors.grey[200],

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle,size: 36.0,color: Colors.blue,),
                      SizedBox(height: 16.0,),
                      Text('Add Package',
                        style: TextStyle(fontSize: 25.0,),),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ],
    ),

    ),
       ),
    );
  }
}
