import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:busgo/Model/bus.dart';

class buses {
   late String busTag;

  late String busType;
  late String driverName;

  late String rating;
   late String seats;


buses({
    required this.busTag,
    required this.busType,
    required this.driverName,
    required this.rating,
    required this.seats,

  });

}
