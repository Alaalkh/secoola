import 'dart:convert';
import 'package:http/http.dart'  as http;
import 'package:secoola/Models/Category.dart';
class ApiService {
  static Future<ApiResponse> fetchData() async {
    final response = await http.get(Uri.parse('https://api.rafeeqissa.com/api/category'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return ApiResponse.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
// class HTTPHandler{
//   String url = "https://api.rafeeqissa.com/api/category";
//   Future<List<Photo>> fetchData() async{
//     List<Photo> myList =[];
//     final respond = await http.get(Uri.parse(url));
//     if(respond.statusCode==200)
//     {
//       // If the server did return a 200 OK response,
//       // then parse the JSON.
//       var data = jsonDecode(respond.body);
//       for(Map<String, dynamic> d in data)
//       {
//         Photo photo= Photo.fromJSON(d);
//         myList.add(photo);
//       }
//       return myList;
//     }
//     else{
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('${respond.statusCode}');
//     }
//   }
// }