import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/api_model.dart';

class ApiService {
  static Future<ApiModel> fetchData() async {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return ApiModel.fromJson(jsonData);
    } else {
      throw Exception('Failed to fetch API data');
    }
  }
}