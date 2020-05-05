
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class GoogleMap extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _GoogleMapState();
  


}

class _GoogleMapState extends State<GoogleMap> {
  @override
  Widget build(BuildContext context) {
    
    GoogleMapController mapController;

    String searcAddr;

    return Scaffold(
      body: Stack(
        children : <Widget>[
          GoogleMap(
            onMapCreated :onMapCreated,

          )


        ]
      ),

    );
  }
  void onMapCreated(controller){
    setState(() {
      mapController = controller;
    });
  }




}
