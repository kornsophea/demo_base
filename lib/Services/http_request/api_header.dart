import 'package:getx_base/utils/local_data.dart';

class ApiHeader {
  static const Map<String, String> apiHeader = {
    "Accept": "application/json",
    "Content-Type":"application/json"
  };
  static Future<Map<String, String>> apiHeaderWithToken() async {
    var token = await LocalData.getToken();
    return {
      "Accept": "application/json",
      'Authorization': 'Bearer $token',
      "Content-Type":"application/json"
    };
  }
}
