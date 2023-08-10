import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Widgets/Category.dart';

class BrowseCategory extends StatelessWidget {
  const BrowseCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 33.h, right: 170.w),
                child: Text(
                  "Browse category",
                  style: TextStyle(fontSize: 18.sp),
                )),
            SizedBox(height: 22.h),
            Container(
              width: 335.w,
              height: 366.h,
              decoration: BoxDecoration(
                  color: const Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.circular(16.r)),
              child: Column(
                children: [
                  Category(
                    icon: Image.asset("assets/art.png"),
                    title: "Art      ",
                    arrow: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                  Category(
                    icon: Image.asset("assets/laptop.png"),
                    title: "Coding",
                    arrow: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                  Category(
                    icon: Image.asset("assets/design.png"),
                    title: "Design",
                    arrow: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                  Category(
                    icon: Image.asset("assets/healthcare.png"),
                    title: "Health",
                    arrow: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                  Category(
                    icon: Image.asset("assets/business.png"),
                    title: "Business",
                    arrow: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                  Category(
                    icon: Image.asset("assets/life.png"),
                    title: "LifeStyle",
                    arrow: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
