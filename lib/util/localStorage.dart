import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class localStorage {
  static Future<void> storeSearchValue(String query) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('query', query);
  }

  static Future<String> getSearchValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('query') != null) {
      String query = prefs.getString('query')!;
      return query;
    } else {
      return "";
    }
  }

  static Future<void> storeDeviceId(String DeviceId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('DeviceId') == null) {
      await prefs.setString('DeviceId', DeviceId);
    }
  }

  static Future<String> getDeviceId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('DeviceId') != null) {
      String DeviceId = prefs.getString('DeviceId')!;
      return DeviceId;
    } else {
      return "";
    }
  }

  static Future<void> getLocation() async {
    try {
      Position? position;
      LocationPermission permission;
      permission = await Geolocator.checkPermission();
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
      } else {
        position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.low);
      }
      await storeLocation(position!);
    } catch (e) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('latitude', '0');
      await prefs.setString('longitude', '0');
    }
  }

  static Future<void> storeLocation(Position? position) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('latitude', position!.latitude.toString());
    await prefs.setString('longitude', position!.longitude.toString());
  }

  static Future<String> getLatitude() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('latitude')!;
  }

  static Future<String> getLongitude() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('longitude')!;
  }
}
