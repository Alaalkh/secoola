import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 22.w),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
          width: 355.w,
          height: 56.h,
          child: Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.NavigationPage);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return teal; //<-- SEE HERE
                    }
                    return grey; // Defer to the widget's default.
                  },
                ),
              ),
              child: Text(
                "Start your Journey",
                style:
                TextStyle(color: white2, fontSize: 16.sp),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 22.h,
        ),
        Text(
          "You can still change your topic again later",
          style: TextStyle(fontSize: 14.sp, color: grey),
        )
      ],
    );
  }
}
