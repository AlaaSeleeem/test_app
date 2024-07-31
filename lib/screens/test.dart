import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  try {
    final response = await fetchData();
    print(response);
  } catch (e) {
    print('Error: $e');
  }
}

Future<Map<String, dynamic>> fetchData() async {
  final url =
      'https://kaffogym.pythonanywhere.com/api/clients/client/'; // Example URL
  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      return json.decode(response.body);
    } else {
      // If the server did not return a 200 OK response, throw an exception
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle any exceptions thrown during the request
    throw Exception('Failed to load data: $e');
  }
}
