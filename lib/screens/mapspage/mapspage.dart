import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => MapPageState();
}

// [
//   {
//     "lat": 20.0,
//     "long": 30.0
//     "infected": true | false
//   },
// ]

class MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: getMarkers([120.0, 230.0]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

//Creates markers for infected users at random locations
  Set<Marker> getMarkers(List<double> listOfUsers) {
    Set<Marker> positionsSet = Set();
    var filteredData = listOfUsers.where((element) => element > 2.0);
    listOfUsers.forEach((element) {
      var newMarker = Marker(
          markerId: MarkerId("value1"), position: LatLng(element, element));
      positionsSet.add(newMarker);
    });
    return positionsSet;
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    // controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
