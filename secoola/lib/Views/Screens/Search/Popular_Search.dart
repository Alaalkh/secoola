import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola/Views/Widgets/Popular_search.dart';
import 'package:secoola/appRoutes.dart';

class popularSearch extends StatelessWidget {
  const popularSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Popularsearch(
                search: 'Cooking',
              ),
              Popularsearch(
                search: 'Python',
              ),
              Popularsearch(
                search: 'Excel',
              ),
              Popularsearch(
                search: 'Coding',
              ),
            ],
          ),
        ),
        SizedBox(
          width: 22.w,
        ),
         Row(
          children: [
            const Popularsearch(
              search: 'Webflow',
            ),
            GestureDetector(onTap: (){
              Get.toNamed(Routes.Searchresult);
            },
              child: const Popularsearch(
                search: 'UX Design',
              ),
            ), const Popularsearch(
              search: 'Flutter',
            ),
          ],
        ),
      ],
    );
  }
}
