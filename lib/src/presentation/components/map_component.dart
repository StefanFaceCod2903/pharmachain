import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medchain/src/actions/index.dart';
import 'package:medchain/src/models/index.dart';

class MapComponent extends StatefulWidget {
  const MapComponent({super.key, required this.pos});

  final LatLng pos;

  @override
  State<MapComponent> createState() => _MapComponentState();
}

class _MapComponentState extends State<MapComponent> {
  late GoogleMapController mapController;

  // ignore: use_setters_to_change_properties
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: widget.pos,
            zoom: 17,
          ),
          markers: <Marker>{
            Marker(
              markerId: const MarkerId('Farmacie'),
              position: widget.pos,
            ),
          },
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 7, left: 7),
          child: FloatingActionButton.extended(
            backgroundColor: const Color(0xFF31B77F),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            icon: const Icon(Icons.map),
            label: const Text('Deschide hartă'),
            onPressed: () {
              StoreProvider.of<AppState>(context).dispatch(LaunchMaps(widget.pos.latitude, widget.pos.longitude));
            },
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 7),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_outlined, size: 30, color: Color(0xFF666666)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
