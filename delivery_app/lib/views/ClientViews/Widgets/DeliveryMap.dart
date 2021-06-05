

import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/views/ClientViews/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:location/location.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:geoflutterfire/geoflutterfire.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: unused_import
import 'package:rxdart/rxdart.dart';
import 'dart:async';


class FireMap extends StatefulWidget {
  const FireMap();
  @override
  FireMapState createState() => FireMapState();
}
typedef Marker MarkerUpdateAction(Marker marker);

class FireMapState extends State<FireMap> {
  FireMapState();

  static final LatLng center = const LatLng(33.8065, 2.88219);
  
  Location location = new Location();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Geoflutterfire geo = Geoflutterfire();

  GoogleMapController? controller;
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  MarkerId? selectedMarker;
  int _markerIdCounter = 1;

  void _onMapCreated(GoogleMapController controller) {
    this.controller = controller;
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onMarkerTapped(MarkerId markerId) {
    final Marker? tappedMarker = markers[markerId];
    if (tappedMarker != null) {
      setState(() {
        final MarkerId? previousMarkerId = selectedMarker;
        if (previousMarkerId != null && markers.containsKey(previousMarkerId)) {
          final Marker resetOld = markers[previousMarkerId]!
              .copyWith(iconParam: BitmapDescriptor.defaultMarker);
          markers[previousMarkerId] = resetOld;
        }
        selectedMarker = markerId;
        final Marker newMarker = tappedMarker.copyWith(
          iconParam: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueGreen,
          ),
        );
        markers[markerId] = newMarker;
      });
    }
  }

  void _onMarkerDragEnd(MarkerId markerId, LatLng newPosition) async {
    final Marker? tappedMarker = markers[markerId];
    if (tappedMarker != null) {
      await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                actions: <Widget>[
                  TextButton(
                    child: const Text('OK'),
                    onPressed: () => Navigator.of(context).pop(),
                  )
                ],
                content: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 66),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Old position: ${tappedMarker.position}'),
                        Text('New position: $newPosition'),
                      ],
                    )));
          });
    }
  }

  void _add() {
    final int markerCount = markers.length;

    if (markerCount == 1) {
      return;
    }

    final String markerIdVal = 'marker_id_$_markerIdCounter';
    _markerIdCounter++;
    final MarkerId markerId = MarkerId(markerIdVal);

    final Marker marker = Marker(
      markerId: markerId,
      position: LatLng(
        center.latitude ,
        center.longitude ,
      ),
      infoWindow: InfoWindow(title: markerIdVal, snippet: '*'),
      onTap: () {
        _onMarkerTapped(markerId);
      },
      onDragEnd: (LatLng position) {
        _onMarkerDragEnd(markerId, position);
      },
    );

    setState(() {
      markers[markerId] = marker;
    });
  }

  void _remove(MarkerId markerId) {
    setState(() {
      if (markers.containsKey(markerId)) {
        markers.remove(markerId);
      }
    });
  }

  Future<void> _toggleDraggable(MarkerId markerId) async {
    final Marker marker = markers[markerId]!;
    setState(() {
      markers[markerId] = marker.copyWith(
        draggableParam: !marker.draggable,
      );
    });
  }
  
  Future<void> _toggleVisible(MarkerId markerId) async {
    final Marker marker = markers[markerId]!;
    setState(() {
      markers[markerId] = marker.copyWith(
        visibleParam: !marker.visible,
      );
    });
  }
     //function to animate the map to the user current location
    _animateToUser() async {
    var pos = await location.getLocation();
    controller!.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
          target: LatLng(pos.latitude, pos.latitude),
          zoom: 17.0,
          )
        )
      );
     }
    
    //function to save users location in the databae
     Future<DocumentReference> _addGeoPoint() async {
         var pos = await location.getLocation();
         GeoFirePoint point = geo.point(latitude: pos.latitude, longitude: pos.longitude);
         print(point);
         return FirebaseFirestore.instance.collection("locations").add({ 
         'position': point.data,
          'name': 'Yay I can be queried!' 
          });
      }


  Widget build(BuildContext context) {
    final MarkerId? selectedId = selectedMarker;
    return Scaffold( 
     appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder:(context) =>HomePage(),
            ),
          );
        },
       ),
          title: Text(
            "Map",
            style: TextStyle(
              fontFamily: StringInner.fonts["main"],
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
              color: Colour.white,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colour.orange,
        ), 
     body: Stack(
      children: [
        GoogleMap(
          initialCameraPosition:const CameraPosition(target: LatLng(33.8065, 2.88219), zoom: 15),
         onMapCreated: _onMapCreated,
          myLocationEnabled: true, // Add little blue dot for device location, requires permission from user
          mapType: MapType.normal, 
           markers: Set<Marker>.of(markers.values),
        ),
        Positioned(
          bottom: 50,
          right: 10,
          child: 
          // ignore: deprecated_member_use
          FlatButton(
            child: Icon(Icons.pin_drop),
            color: Colour.orange, 
            onPressed:/*_addGeoPoint*/_add,
          )
        ),
        Positioned(
          bottom: 130,
          right: 10,
          child: 
          // ignore: deprecated_member_use
          FlatButton(
            child: Icon(Icons.drag_indicator_sharp),
            color: Colour.orange, 
            onPressed: selectedId == null
             ? null
              : () => _toggleDraggable(selectedId),
            ),
        ),
        Positioned(
          bottom: 90,
          right: 10,
          child: 
          // ignore: deprecated_member_use
          FlatButton(
            child: Icon(Icons.remove),
            color: Colour.orange, 
            onPressed: selectedId == null
               ? null
             : () => _remove(selectedId),
            ),
        )
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
     )
    );
  }

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
