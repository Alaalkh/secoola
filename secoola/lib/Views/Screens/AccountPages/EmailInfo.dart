import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/theme/Color.dart';

class Emailinfo extends StatelessWidget {
  const Emailinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 22.w, top: 40.h),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: yellow, borderRadius: BorderRadius.circular(12.r)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 22.w,top: 33.h),
              child: Text(
                "Raymond Skyberg",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 22.w,top: 11.h),
              child: Text(
                "raymond@mail.com",
                style: TextStyle(fontSize: 12.sp, color: grey),
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 100.w, top: 40.h),
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
              color: white2, borderRadius: BorderRadius.circular(12.r)),
          child: Image.asset(
            "assets/editbutton.png",
            scale: 2,
          ),
        )
      ],
    );
  }
}
