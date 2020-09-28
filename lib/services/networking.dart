import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);

      // var longitude = decodedData['coord']['lon'];
      // var description = decodedData['weather'][0]['main'];
    } else {
      print(response.statusCode);
    }
  }
}
