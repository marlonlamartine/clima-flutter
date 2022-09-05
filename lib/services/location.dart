import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  double getLatitude() {
    return this.latitude;
  }

  void setLatitude(double lat) {
    this.latitude = lat;
  }

  double getLongitude() {
    return this.longitude;
  }

  void setLongitude(double long) {
    this.longitude = long;
  }

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
