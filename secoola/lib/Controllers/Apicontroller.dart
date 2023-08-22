import 'dart:convert';
import 'package:http/http.dart'  as http;
import 'package:secoola/Models/Category.dart';
import 'package:secoola/Models/MainInfo.dart';
class ApiService {
  static Future<ApiResponse> fetchCategory() async {
    final response = await http.get(Uri.parse('https://api.rafeeqissa.com/api/category'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return ApiResponse.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  }
  static Future<Api> fetchPopularCourse() async {
    final response = await http.get(Uri.parse('https://api.rafeeqissa.com/api/main'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return Api.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
