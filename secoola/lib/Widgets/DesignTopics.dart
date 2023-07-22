import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesignTopics extends StatelessWidget {
  final Color boxcolor;
  final String titletext;
  final String coursetutor;
  final String price;
  final String recommend;
  final Color colorText;
  final Color background;
  const DesignTopics({super.key, required this.boxcolor, required this.titletext, required this.coursetutor, required this.price, required this.recommend, required this.colorText, required this.background});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start ,
      children: [ Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 22, top: 22),
            height: 100,
            width: 142,
            decoration: BoxDecoration(
                color:boxcolor,
                borderRadius: BorderRadius.circular(17)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 11, left: 6),
                  decoration: BoxDecoration(
                      color: const Color(0xfffFFFFFF),
                      borderRadius: BorderRadius.circular(9)),
                  height: 28,
                  width: 49,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/star.png",
                        height: 11,
                        width: 22,
                      ),
                      const Text("4.8")
                    ],
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 11),
                  decoration: BoxDecoration(
                      color: const Color(0xfffFFFFFF),
                      borderRadius: BorderRadius.circular(9)),
                  height: 28,
                  width: 28,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 6),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 17,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 22, top: 11),
              child:  Text(
                titletext,
                style: const TextStyle(color: Colors.black, fontSize: 14),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 20, top: 6),
                child: const Icon(
                  Icons.person,
                  color: Color(0xfffA9AEB2),
                )),
            Container(
              margin: const EdgeInsets.only(top: 6),
              child:  Text(
                coursetutor,
                style: const TextStyle(color: Color(0xfffA9AEB2), fontSize: 12),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 22, top: 6),
              child:  Text(
                price,
                style: TextStyle(color: Color(0xfff00A9B7), fontSize: 16),
              ),
            ),
            Container(
              height: 20,
              width: 77,
              alignment: Alignment.center,
              decoration:  BoxDecoration(color: background,borderRadius: BorderRadius.circular(22)),
              margin: const EdgeInsets.only(left: 11, top: 6),
              child:  Text(
                recommend,
                style: TextStyle(color: colorText, fontSize: 12),
              ),
            )
          ],
        )
      ],);
  }
}
