import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:secoola/Models/Category_Data.dart';

class CategoryController extends GetxController {
  Category? category;
  CategoryController._();
  static CategoryController categoryController = CategoryController._();
  @override
  Future<void> onInit() async {
    super.onInit();
    fetchData();
  }

Future  fetchData() async {
    try {
      http.Response response = await http.get(Uri.parse(
          'https://api.rafeeqissa.com/api/category'));
           var result = jsonDecode(response.body);
           category = Category.fromJson(result);
           print(result);
    } finally {
         }
  }
}