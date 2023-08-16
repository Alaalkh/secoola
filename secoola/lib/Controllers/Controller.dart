import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:secoola/Models/Category_Data.dart';

class CategoryController extends GetxController {
  OpenseaModel? openseaModel;

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchData();
  }

Future  fetchData() async {
    try {
      http.Response response = await http.get(Uri.parse(
          'https://api.rafeeqissa.com/api/category'));
      print(response.body);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        openseaModel = OpenseaModel.fromJson(result);
      } else {
        print('error fetching data');
      }
    } catch (e) {
      print('Error while getting data is $e');
    } finally {
    }
  }
}