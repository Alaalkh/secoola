import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:secoola/Models/Category.dart';
import 'package:secoola/Models/DesignCourse.dart';
import 'dart:convert';

import 'package:secoola/Models/MainInfo.dart';
import 'package:secoola/Models/categoryiesclass.dart';
import 'package:secoola/Models/laravelCategory.dart';
import 'package:secoola/Views/Screens/Home/Categories.dart';

class ApiController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<PapularCourses> popularCourses = <PapularCourses>[].obs;
  RxList<DesignCourses> designcourses = <DesignCourses>[].obs;
  RxList<DesignCourses> Codingcourses = <DesignCourses>[].obs;
  RxList<DesignCourses> Marketingcourses = <DesignCourses>[].obs;
  RxList<DesignCourses> Categories = <DesignCourses>[].obs;
  RxList<ProgrammingTopic> programmingtopics = <ProgrammingTopic>[].obs;
  RxList<LaravelCategory> larvelCourses = <LaravelCategory>[].obs;
  RxList<Categoruyclass> categorydata = <Categoruyclass>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchPopularCourses();
    fetchDesignCourses();
    fetchCodingCourses();
    fetchMarketingCourses();
    fetchCategory();
    laravel();
    fetchData();
  }

  static Future<ApiResponse> Category() async {
    final response =
        await http.get(Uri.parse('https://api.rafeeqissa.com/api/category'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return ApiResponse.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<void> fetchPopularCourses() async {
    try {
      final response =
          await http.get(Uri.parse('https://api.rafeeqissa.com/api/main'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final popularCoursesData = jsonData['data']['PapularCourses'] as List;
        popularCourses.value = popularCoursesData
            .map((courseJson) => PapularCourses.fromJson(courseJson))
            .toList();
      }
    } catch (e) {
      print('Error fetching data: $e');
    } finally {
      isLoading.value = false;
    }
  }
  Future<void> fetchData() async {
    try {
      final response =
          await http.get(Uri.parse('https://api.rafeeqissa.com/api/main'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final popularCoursesData = jsonData['data']['Category'] as List;
        categorydata.value = popularCoursesData
            .map((courseJson) => Categoruyclass.fromJson(courseJson))
            .toList();
      }
    } catch (e) {
      print('Error fetching data: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> fetchCategory() async {
    try {
      final response =
          await http.get(Uri.parse('https://api.rafeeqissa.com/api/category'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final popularCoursesData = jsonData['data'] as List;
        programmingtopics.value = popularCoursesData
            .map((courseJson) => ProgrammingTopic.fromJson(courseJson))
            .toList();
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
      final response =
          await http.get(Uri.parse('https://api.rafeeqissa.com/api/main'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final designcourse = jsonData['data']['Design'] as List;
        designcourses.value = designcourse
            .map((courseJson) => DesignCourses.fromJson(courseJson))
            .toList();
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
      final response =
          await http.get(Uri.parse('https://api.rafeeqissa.com/api/main'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final codingcourses = jsonData['data']['Coding'] as List;
        Codingcourses.value = codingcourses
            .map((courseJson) => DesignCourses.fromJson(courseJson))
            .toList();
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
      final response =
          await http.get(Uri.parse('https://api.rafeeqissa.com/api/main'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final marketingcourses = jsonData['data']['Markt'] as List;
        Marketingcourses.value = marketingcourses
            .map((courseJson) => DesignCourses.fromJson(courseJson))
            .toList();
      }
    } catch (e) {
      print('Error fetching data: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> fetchCategories() async {
    try {
      final response =
          await http.get(Uri.parse('https://api.rafeeqissa.com/api/lecture'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final categories = jsonData['data'] as List;
        Categories.value = categories
            .map((courseJson) => DesignCourses.fromJson(courseJson))
            .toList();
      }
    } catch (e) {
      print('Error fetching data: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> laravel() async {
    try {
      final response =
          await http.get(Uri.parse('https://api.rafeeqissa.com/api/lecture'));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final categories = jsonData['data'] as List;
        larvelCourses.value = categories
            .map((courseJson) => LaravelCategory.fromJson(courseJson))
            .toList();
        print(categories);
      }
    } catch (e) {
      print('Error fetching data: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
