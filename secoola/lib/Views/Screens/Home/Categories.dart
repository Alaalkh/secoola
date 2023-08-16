import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola/Controllers/Controller.dart';
import 'package:secoola/Views/Widgets/CategoriesWidget.dart';
import 'package:secoola/theme/Color.dart';
import 'package:http/http.dart' as http;


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // List Catge=[];
  // Future  fetchData() async {
  //   http.Response response = await http.get(Uri.parse(
  //       'https://api.rafeeqissa.com/api/category'));
  //   var result = jsonDecode(response.body);
  //     var respondbody=jsonDecode(result.body);
  //     print(respondbody[2]);
  //     setState(() {
  //       Catge.addAll(respondbody);
  //
  //     });
  //     print(Catge);
  // }
  @override
  void initState() {
    super.initState();
    CategoryController.categoryController.fetchData();
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25.h),
              child: Text(
                "Categories",
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
              ),
            ),
            SizedBox(
              width: 130.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.w),
              child: Text(
                "See All",
                style: TextStyle(color: teal, fontSize: 14.sp),
              ),
            )
          ],
        ),
        SizedBox(
          height: 88.h,
          child: FutureBuilder(
            future: CategoryController.categoryController.fetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator(color: teal,),);
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (snapshot.hasData) {
                final categoryData = snapshot.data;
                return ListView.builder(
                  itemCount: categoryData!.length,
                  itemBuilder: (context, index) {
                    return CategoriesWidget(
                      image: categoryData[index]!.image.toString(),
                      Category: categoryData[index]!.name.toString(),
                    );
                  },
                );
              } else {
                return const Center(child: Text('No data available.'));
              }
            },
          ),
        ),

      ],
    );
  }
}
