import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:busgo/Model/trip.dart';

class trip {
   late String company_name;

  late String busType;
   late String first_dest;
  late  String first_time;
  late String last_dest;
   late String last_time;
  late String price;

trip({
    required this.company_name,
    required this.busType,
    required this.first_dest,
    required this.first_time,
    required this.last_dest,
    required this.last_time,
    required this.price,
    
});



  
  
}