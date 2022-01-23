import 'dart:async';
import 'package:busgo/Drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:busgo/trackingdirectionsmap/locationservice.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DriverDetailsTwoo extends StatefulWidget {
  //static const routeName = "/FromTo";

  @override
  State<DriverDetailsTwoo> createState() => DriverDetailsTwooState();
}

class DriverDetailsTwooState extends State<DriverDetailsTwoo> {
  final Stream<QuerySnapshot> buses =
      FirebaseFirestore.instance.collection('buses').snapshots();
  Completer<GoogleMapController> _controller = Completer();
  TextEditingController _originController = TextEditingController();
  TextEditingController _destinationController = TextEditingController();

  Set<Marker> _markers = Set<Marker>();
  Set<Polygon> _polygons = Set<Polygon>();
  Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polygonLatLngs = <LatLng>[];

  int _polygonIdCounter = 1;
  int _polylineIdCounter = 1;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(30.033333, 31.233334),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();

    _setMarker(LatLng(30.033333, 31.233334));
  }

  void _setMarker(LatLng point) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('marker'),
          position: point,
        ),
      );
    });
  }

  void _setPolygon() {
    final String polygonIdVal = 'polygon_$_polygonIdCounter';
    _polygonIdCounter++;

    _polygons.add(
      Polygon(
        polygonId: PolygonId(polygonIdVal),
        points: polygonLatLngs,
        strokeWidth: 2,
        fillColor: Colors.transparent,
      ),
    );
  }

  void _setPolyline(List<PointLatLng> points) {
    final String polylineIdVal = 'polyline_$_polylineIdCounter';
    _polylineIdCounter++;

    _polylines.add(
      Polyline(
        polylineId: PolylineId(polylineIdVal),
        width: 2,
        color: Colors.blue,
        points: points
            .map(
              (point) => LatLng(point.latitude, point.longitude),
            )
            .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(
            title: Text('Bus Detials'),
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            children: [
              Expanded(
                child: GoogleMap(
                  mapType: MapType.normal,
                  markers: _markers,
                  polygons: _polygons,
                  polylines: _polylines,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  onTap: (point) {
                    setState(() {
                      polygonLatLngs.add(point);
                      _setPolygon();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('buses').snapshots(),
          builder: (
            BuildContext context,
            AsyncSnapshot<QuerySnapshot> snapshot,
          ) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }
            final data = snapshot.requireData;
            return ListView.builder(
              itemCount: data.size,
              itemBuilder: (context, index) {
                //x = data.docs[index]["busType"];
                return Padding(
                  //padding: const EdgeInsets.all(100.0),
                  //padding: const EdgeInsets.only(top: 30.0),
                  padding: const EdgeInsets.only(top: 55),
                  child: Container(
                    // constraints: BoxConstraints.expand(bottom: 50),
                    color: Colors.white,
                    // height: 120,
                    //  width: 500,
                    //double width,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        /////// 1
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: new BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/person2.jpg',
                                    height: 52,
                                  ),
                                ),
                                Text(
                                  '${data.docs[index]["driverName"]}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ],
                            ),
                            //   ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '${data.docs[index]["busType"]}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Text(
                                  'BusTag: ${data.docs[index]["busTag"]}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Text(
                                  'Rating ${data.docs[index]["rating"]}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                        ////2
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: new BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/iconphone.png',
                                height: 50,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Chat');
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.blueGrey,
                                  textStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Mouse Memoirs',
                                  )),
                              child: Text(
                                'Send Message',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.pushNamed(context, '/FromTo');
                                Navigator.pushNamed(context, '/FromTo');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blueGrey,
                                minimumSize: const Size(165, 40), //w,h

                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Mouse Memoirs',
                                ),
                              ),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/RatingDriver');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blueGrey,
                                minimumSize: const Size(165, 40), //w,h

                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Mouse Memoirs',
                                ),
                              ),
                              child: Text(
                                'End Trip',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //////////////////////////////////////write here colum
                  ),
                );
              },
            );
          },
        ),
        /*ClipRRect(
          borderRadius: new BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/iconphone.jpg',
            height: 52,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/LiveChat');
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey,
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
              color: Colors.white,
            ),
          ),
        ),*/
        ///////
      ],
    );
  }

  Future<void> _goToPlace(
    // Map<String, dynamic> place,
    double lat,
    double lng,
    Map<String, dynamic> boundsNe,
    Map<String, dynamic> boundsSw,
  ) async {
    // final double lat = place['geometry']['location']['lat'];
    // final double lng = place['geometry']['location']['lng'];

    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, lng), zoom: 12),
      ),
    );

    controller.animateCamera(
      CameraUpdate.newLatLngBounds(
          LatLngBounds(
            southwest: LatLng(boundsSw['lat'], boundsSw['lng']),
            northeast: LatLng(boundsNe['lat'], boundsNe['lng']),
          ),
          25),
    );
    _setMarker(LatLng(lat, lng));
  }
}
