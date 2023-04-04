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

  static Future<Position> getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    return position;
    // print(position.latitude);
    // print(position.longitude);
  }
}
