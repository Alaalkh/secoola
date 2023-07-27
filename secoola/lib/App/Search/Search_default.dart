import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Widgets/Category.dart';

import '../../Widgets/Popular_search.dart';

class Searchdefault extends StatelessWidget {
  const Searchdefault({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfffFAFAFA),
      body: SingleChildScrollView(
        child: Column(
          children: [searchbar(), popularSearch(), BrowseCategory()],
        ),
      ),
    );
  }
}

class searchbar extends StatelessWidget {
  const searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 88.h),
              height: 48.h,
              width: 335.w,
              decoration: BoxDecoration(
                  color: const Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.circular(15.r)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for anything",
                  suffixIcon: const Icon(Icons.keyboard_voice),
                  hintStyle: TextStyle(
                      fontSize: 14.sp, color: const Color(0xfffD9DBDE)),
                  prefixIcon: Image.asset(
                    "assets/img_4.png",
                    scale: 5,
                  ),
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(top: 33.h, left: 22.w),
                child: Text(
                  "Popular search",
                  style: TextStyle(fontSize: 18.sp),
                )),
          ],
        ),
      ],
    );
  }
}

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
        const Row(
          children: [
            Popularsearch(
              search: 'Webflow',
            ),
            Popularsearch(
              search: 'UX Design',
            ),
          ],
        ),
      ],
    );
  }
}

class BrowseCategory extends StatelessWidget {
  const BrowseCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(top: 33.h, left: 22.w),
                child: Text(
                  "Browse category",
                  style: TextStyle(fontSize: 18.sp),
                )),
          ],
        ),
        SizedBox(height: 22.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                  ),         Category(
                    icon: Image.asset("assets/laptop.png"),
                    title: "Coding",
                    arrow: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),       Category(
                    icon: Image.asset("assets/design.png"),
                    title: "Design",
                    arrow: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),   Category(
                    icon: Image.asset("assets/healthcare.png"),
                    title: "Health",
                    arrow: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),Category2(
                    icon: Image.asset("assets/business.png"),
                    title: "Business",
                    arrow: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),Category2(
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
        )
      ],
    ));
  }
}
