import 'package:http/http.dart' as http;
import 'dart:convert';

class ValuesAPI {
  List<Map<String, dynamic>> valjson = [];

  Future<List<Map<String, dynamic>>> fetchVal(val) async {
    String url =
        'https://io.adafruit.com/api/v2/jinimolpg/feeds/$val/data?x-aio-key=aio_SOxv54MdCZyOvD7zsGKczlkZPzph';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = response.body;
      List<Map<String, dynamic>> out =
          json.decode(data).cast<Map<String, dynamic>>();
      return out;
    } else {
      print('Request failed with status: ${response.statusCode}');
      return [];
    }
  }
}
