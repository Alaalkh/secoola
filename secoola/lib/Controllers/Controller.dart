import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:secoola/Models/Category.dart';
import 'package:secoola/Models/DesignCourse.dart';
import 'dart:convert';

import 'package:secoola/Models/MainInfo.dart';

class ApiController extends GetxController {

  RxBool isLoading = true.obs;
  RxList<PapularCourses> popularCourses = <PapularCourses>[].obs;
  RxList<DesignCourses> designcourses = <DesignCourses>[].obs;
  RxList<DesignCourses> Codingcourses = <DesignCourses>[].obs;
  RxList<DesignCourses> Marketingcourses = <DesignCourses>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchPopularCourses();
    fetchDesignCourses();
    fetchCodingCourses();
    fetchMarketingCourses();
  }
  static Future<ApiResponse> fetchCategory() async {
    final response = await http.get(Uri.parse('https://api.rafeeqissa.com/api/category'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return ApiResponse.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<void> fetchPopularCourses() async {
    try {
      final response = await http.get(Uri.parse('https://api.rafeeqissa.com/api/main'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final popularCoursesData = jsonData['data']['PapularCourses'] as List;
        popularCourses.value = popularCoursesData.map((courseJson) => PapularCourses.fromJson(courseJson)).toList();
      }
    } catch (e) {
      print('Error fetching data: $e');
    } finally {
      isLoading.value = false;
    }
  }


  /////////////////////////////////////////////////////

  Future<void> fetchDesignCourses() async {
    try {
      final response = await http.get(Uri.parse('https://api.rafeeqissa.com/api/main'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final popularCoursesData = jsonData['data']['Design'] as List;
        designcourses.value = popularCoursesData.map((courseJson) => DesignCourses.fromJson(courseJson)).toList();
      }
    } catch (e) {
      print('Error fetching data: $e');
    } finally {
      isLoading.value = false;
    }
  }

  /////////////////////////////////////////////////////

  Future<void> fetchCodingCourses() async {
    try {
      final response = await http.get(Uri.parse('https://api.rafeeqissa.com/api/main'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final popularCoursesData = jsonData['data']['Coding'] as List;
        Codingcourses.value = popularCoursesData.map((courseJson) => DesignCourses.fromJson(courseJson)).toList();
      }
    } catch (e) {
      print('Error fetching data: $e');
    } finally {
      isLoading.value = false;
    }
  }
  /////////////////////////////////////////////////////

  Future<void> fetchMarketingCourses() async {
    try {
      final response = await http.get(Uri.parse('https://api.rafeeqissa.com/api/main'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final popularCoursesData = jsonData['data']['Markt'] as List;
        Marketingcourses.value = popularCoursesData.map((courseJson) => DesignCourses.fromJson(courseJson)).toList();
      }
    } catch (e) {
      print('Error fetching data: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
