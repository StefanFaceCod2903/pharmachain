import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:location/location.dart';
import 'package:medchain/src/models/index.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationApi {
  LocationApi(this.firestore, {required this.location});

  final Location location;
  final FirebaseFirestore firestore;

  Future<LocationModel?> getLocation() async {
    PermissionStatus permission = await location.hasPermission();
    if (permission == PermissionStatus.denied || permission == PermissionStatus.deniedForever) {
      permission = await location.requestPermission();

      if (permission == PermissionStatus.denied || permission == PermissionStatus.deniedForever) {
        return null;
      }
    }

    final LocationData result = await location.getLocation();

    final LocationModel userLocation = LocationModel(lat: result.latitude ?? 0.0, long: result.longitude ?? 0.0);
    return userLocation;
  }

  Future<void> launchURLBrowser(double lat, double lng) async {
    final String url = 'https://www.google.com/maps/search/?api=1&query=$lat%2C$lng';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }
}
