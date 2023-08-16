import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola/Controllers/Controller.dart';
import 'package:secoola/Views/Widgets/CategoriesWidget.dart';
import 'package:secoola/theme/Color.dart';
import '../../../Models/Category_Data.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    CategoryController openseaController = Get.put(CategoryController());

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
          height: 50.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: openseaController.openseaModel?.assets?.length ?? 0,
              itemBuilder: (context, index) {
                final asset = openseaController.openseaModel?.assets?[index];
                return CategoriesWidget(
                    Category: asset!.name!,
                    image: asset!.image!);
              }),
        ),
      ],
    );
  }
}
