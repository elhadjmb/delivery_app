import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//import 'package:location/location.dart';

//import 'package:geoflutterfire/geoflutterfire.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:rxdart/rxdart.dart';
//import 'dart:async';


class FireMap extends StatefulWidget {
  @override
  _FireMapState createState() => _FireMapState();
}

class _FireMapState extends State<FireMap> {
  @override

 /* GoogleMapController mapController;
   Location location = new Location();

   Firestore firestore = Firestore.instance;
  Geoflutterfire geo = Geoflutterfire();
  
  //stateful data
  BehaviorSubject<double> radius = BehaviorSubject(seedValue: 100.0);
  Stream<dynamic> query;

  //subscription to prevent memory leak
  StreamSubscription subscription;*/

  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(target: LatLng(24.150, -110.32), zoom: 10),
         // onMapCreated: _onMapCreated,
          myLocationEnabled: true, // Add little blue dot for device location, requires permission from user
          mapType: MapType.normal, 
        ),
        Positioned(
          bottom: 50,
          right: 10,
          child: 
          FlatButton(
            child: Icon(Icons.pin_drop),
            color: Colors.green, onPressed: () {  },
           // onPressed: () => _addGeoPoint
          )
        ),
       /* Positioned(
          bottom: 50,
          left: 10,
         child: Slider(
          min: 100.0,
          max: 500.0, 
          divisions: 4,
          //value: radius.value,
         // label: 'Radius ${radius.value}km',
          activeColor: Colors.green,
          inactiveColor: Colors.green.withOpacity(0.2),
        //  onChanged: _updateQuery,
        )
      )*/
      ],
    );
  }

  /*  void _onMapCreated(GoogleMapController controller) {
    _startQuery();
    setState(() {
      mapController = controller;
        });
    }*/
    
    //function to add a marker on the map
    /*_addMarker() {
      var marker = Marker(
      position: mapController.cameraPosition.target,
      icon: BitmapDescriptor.defaultMarker,
      infoWindowText: InfoWindowText('Magic Marker', '🍄🍄🍄')
      );
         mapController.addMarker(marker);
     }*/
     
     //function to animate the map to the user current location
   /*  _animateToUser() async {
    var pos = await location.getLocation();

    mapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
          target: LatLng(pos.latitude, pos.latitude),
          zoom: 17.0,
          )
        )
      );
     }*/

     //function to save users location in the databae
    /* Future<DocumentReference> _addGeoPoint() async {
         var pos = await location.getLocation();
         GeoFirePoint point = geo.point(latitude: pos.latitude, longitude: pos.longitude);
         return firestore.collection('locations').add({ 
         'position': point.data,
        'name': 'Yay I can be queried!' 
          });
      }*/

      //updating the markers
     /* void _updateMarkers(List<DocumentSnapshot> documentList) {
    print(documentList);
    mapController.clearMarkers();
    documentList.forEach((DocumentSnapshot document) {
        GeoPoint pos = document.data['position']['geopoint'];
        double distance = document.data['distance'];
        var marker = Marker(
          position: LatLng(pos.latitude, pos.longitude),
          icon: BitmapDescriptor.defaultMarker,
          infoWindowText: InfoWindowText('Magic Marker', '$distance kilometers from query center')
        );


        mapController.addMarker(marker);
    });
  }*/


     //the query to the firestore
   /*  _startQuery() async {
    // Get users location
    var pos = await location.getLocation();
    double lat = pos.latitude;
    double lng = pos.longitude;


    // Make a referece to firestore
    var ref = firestore.collection('locations');
    GeoFirePoint center = geo.point(latitude: lat, longitude: lng);

    // subscribe to query
    subscription = radius.switchMap((rad) {
      return geo.collection(collectionRef: ref).within(
        center: center, 
        radius: rad, 
        field: 'position', 
        strictMode: true
      );
    }).listen(_updateMarkers);
  }
*/
 /* _updateQuery(value) {
      setState(() {
        radius.add(value);
      });
  }

  //to cancel the subscription and to to avoid memory leaks 
   @override
  dispose() {
    subscription.cancel();
    super.dispose();
  }   
*/

}
