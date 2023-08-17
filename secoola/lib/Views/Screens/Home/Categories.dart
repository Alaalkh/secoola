import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        const SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
               children: [CategoriesWidget(image: "assets/design.png", Category: "Design"),CategoriesWidget(image: "assets/laptop.png", Category: "Coding"),
                 CategoriesWidget(image: "assets/business.png", Category: "Marketing"),
                ],
              ),Row(
                children: [CategoriesWidget(image: "assets/healthcare.png", Category: "LifeStyle"),CategoriesWidget(image: "assets/design.png", Category: "Design"),
                  CategoriesWidget(image: "assets/design.png", Category: "Design"),
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}
