import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Widgets/CategoriesWidget.dart';

import 'package:secoola/theme/Color.dart';


class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 22.w, top: 22.h),
              child: Text(
                "Categories",
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
              ),
            ),
            SizedBox(
              width: 180.w,
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w, top: 22.h),
              child: Text(
                "See All",
                style: TextStyle(color: teal, fontSize: 14.sp),
              ),
            )
          ],
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoriesWidget(
                Category: 'Art',
                image: "assets/mona-lisa.png",
              ),
              CategoriesWidget(
                Category: 'Coding',
                image: "assets/laptop.png",
              ),
              CategoriesWidget(
                Category: 'Design',
                image: "assets/design.png",
              ),
              CategoriesWidget(
                Category: 'Health',
                image: "assets/healthcare.png",
              )
            ],
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoriesWidget(
                Category: 'Business',
                image: "assets/business.png",
              ),
              CategoriesWidget(
                Category: 'Marketing',
                image: "assets/laptop.png",
              ),
              CategoriesWidget(
                Category: 'LifeStyle',
                image: "assets/life.png",
              ),
            ],
          ),
        )
      ],
    );
  }
}