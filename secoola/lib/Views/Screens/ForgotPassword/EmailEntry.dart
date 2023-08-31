import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola/Views/Widgets/TextWidget.dart';
import 'package:secoola/theme/Color.dart';

import '../../../appRoutes.dart';

class EmailEntry extends StatelessWidget {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 335,
              height: 56,
              margin:  EdgeInsets.only(top: 44.h, left: 27.w),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(16)),
              child:  Textwidget(obscuretext: false,controller: emailController,
                hint: '  Your email', icon: Icon(Icons.email,color: teal,size: 17,),
              ),
            ),
          ],
        ),
         SizedBox(
          height: 22.h,
        ),
        Row(
          children: [
            Container(
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(11)),
              width: 355.w,
              height: 56.h,
              child: Padding(
                padding:  EdgeInsets.only(left: 25.w),
                child: ElevatedButton(
                  onPressed: () {
                    // Get.toNamed(Routes.verification);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: teal,
                  ),
                  child: const Text(
                    "Send verification code",
                    style: TextStyle(color: white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
