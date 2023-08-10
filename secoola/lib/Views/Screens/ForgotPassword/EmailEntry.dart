import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola/Views/Widgets/CustomeButton.dart';
import 'package:secoola/Views/Widgets/TextFieldWidget.dart';
import 'package:secoola/theme/Color.dart';

import '../../../appRoutes.dart';

class EmailEntry extends StatelessWidget {
  const EmailEntry({super.key});

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
              child: const TextFeildwidget(obscuretext: false,
                hint: '  Your email', icon: Icon(Icons.email,color: teal,size: 17,),
              ),
            ),
          ],
        ),
         SizedBox(
          height: 22.h,
        ),
        GestureDetector(onTap: (){
          Get.toNamed(Routes.verification);
        },
            child: const VerfiyButton(ButtonString: 'Send Verification Code',))
      ],
    );
  }
}
