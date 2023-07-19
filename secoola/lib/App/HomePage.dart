import 'package:flutter/material.dart';
import 'package:secoola/Widgets/CourseWidget.dart';

import '../Widgets/CategoriesWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfffFAFAFA),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Appbar(), PopularCourse(), Categories()],
        ),
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xfff00A9B7),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(28),
          bottomRight: Radius.circular(28),
        ),
      ),
      height: 222,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 33, top: 66),
                  child: const Text(
                    "Hi, Dimas",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )),
              const SizedBox(
                width: 22,
              ),
              Container(
                margin: const EdgeInsets.only(top: 66),
                child: const Text(
                  "👋   ",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(
                width: 77,
              ),
              Container(
                margin: const EdgeInsets.only(top: 66),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xfff008793),
                ),
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 6,
              ),
              Container(
                margin: const EdgeInsets.only(top: 66),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xfff008793),
                ),
                height: 40,
                width: 40,
              )
            ],
          ),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 33),
                  child: const Text(
                    "Let's start learning!",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ))
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 48,
                width: 335,
                decoration: BoxDecoration(
                    color: const Color(0xfffFFFFFF),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for anything",
                    hintStyle: const TextStyle(
                        fontSize: 14, color: Color(0xfffD9DBDE)),
                    prefixIcon: Image.asset(
                      "assets/img_4.png",
                      scale: 5,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class PopularCourse extends StatelessWidget {
  const PopularCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 22, top: 22),
              child: const Text(
                "Popular course",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            const SizedBox(
              width: 144,
            ),
            Container(
              margin: const EdgeInsets.only(left: 22, top: 22),
              child: const Text(
                "See All",
                style: TextStyle(color: Color(0xfff00A9B7), fontSize: 14),
              ),
            )
          ],
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseWidget(
                boxcolor: Color(0xfffFFEA7D),
                titletext: "Design Thingking Fundamental",
                coursetutor: "Robert Fox",
                price: "\$ 150",
                colorText: Colors.red,
                recommend: "Best Seller",
                background: Color(0xfffFCE2EA),
              ),
              CourseWidget(
                boxcolor: Color(0xfffA3CCDE),
                titletext: "Flutter Class - Advance Program",
                coursetutor: "Wade Warren",
                price: "\$ 24",
                colorText: Color(0xfff00A9B7),
                recommend: "Recomended",
                background: Color(0xfffDCF3F5),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 22, top: 22),
              child: const Text(
                "Categories",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            const SizedBox(
              width: 180,
            ),
            Container(
              margin: const EdgeInsets.only(left: 22, top: 22),
              child: const Text(
                "See All",
                style: TextStyle(color: Color(0xfff00A9B7), fontSize: 14),
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
