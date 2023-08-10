import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Screens/Search/Browse_Category.dart';
import 'package:secoola/Views/Screens/Search/Popular_Search.dart';
import 'package:secoola/Views/Widgets/Category.dart';
import '../../Widgets/Popular_search.dart';
import '../../Widgets/SearchBar.dart';

class Searchdefault extends StatelessWidget {
  const Searchdefault({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xfffFAFAFA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            searchbar(title: 'Search for anything', trailingicon: Icon(Icons.keyboard_voice_sharp),),
            Padding(
                padding: EdgeInsets.only(top: 33.h, right: 190.w),
                child: Text(
                  "Popular search",
                  style: TextStyle(fontSize: 18.sp),
                )),
            popularSearch(),
            BrowseCategory()
          ],
        ),
      ),
    );
  }
}
