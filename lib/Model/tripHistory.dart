import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:busgo/Model/tripHistory.dart';

class tripHistory {
  late String busName;

  late String busType;
  late String date;
  late String destination;
  late String driverName;
  late String driverRating;
  late String orign;
  late String payment;
  late String userName;

  tripHistory({
    required this.busName,
    required this.busType,
    required this.date,
    required this.destination,
    required this.driverName,
    required this.driverRating,
    required this.orign,
    required this.payment,
    required this.userName,
  });
}
