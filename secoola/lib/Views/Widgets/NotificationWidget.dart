import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/Color.dart';

class NotificationWidget extends StatelessWidget {
  final Icon image;
  final String title;
  final String description;
final Icon list;
  const NotificationWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.description, required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 17.h, left: 11.w),
        height: 80.h,
        width: 335.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: white2,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 22.w),
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(10.r)),
              child: image,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(margin: EdgeInsets.only(top: 17.h,left: 22.w),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),SizedBox(height: 11.h,),
                Container(margin: EdgeInsets.only(left: 22.w),
                  child: Text(
                    description,
                    style: const TextStyle(fontSize: 12, color: grey),
                  ),
                )
              ],
            ),SizedBox(width: 45.w,),

                Container(
                  child: list,),

          ],
        ));
  }
}
