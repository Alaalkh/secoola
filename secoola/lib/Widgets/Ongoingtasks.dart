import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Ondoingtask extends StatelessWidget {
  const Ondoingtask({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
       Item1(),Item2(),Item3()
    ],);
  }
}
class Item1 extends StatelessWidget {
  const Item1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 22,
        ),
        Row(
          children: [
            Container(
              width: 335,
              height: 200,
              decoration: BoxDecoration(
                  color: const Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.circular(17)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 22, top: 11),
                        height: 68,
                        width: 68,
                        decoration: BoxDecoration(
                            color: const Color(0xfffFFEA7D),
                            borderRadius: BorderRadius.circular(17)),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                height: 22,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 6, top: 22),
                                child:
                                const Text("Design Thingking Fundamental"),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  margin:
                                  const EdgeInsets.only(left: 6, top: 6),
                                  child: const Icon(
                                    Icons.person,
                                    color: Color(0xfffA9AEB2),
                                  )),
                              Container(
                                margin: const EdgeInsets.only(top: 6),
                                child: const Text(
                                  "Dianne Russell",
                                  style: TextStyle(
                                      color: Color(0xfffA9AEB2), fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 77,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xfffDCF3F5),
                                    borderRadius: BorderRadius.circular(12)),
                                margin: const EdgeInsets.only(left: 6, top: 6),
                                child: const Text(
                                  "Label",
                                  style: TextStyle(
                                      color: Color(0xfff00A9B7), fontSize: 12),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 22, top: 11),
                        child: const Text(
                          "Progress",
                          style: TextStyle(
                              fontSize: 12, color: Color(0xfff707070)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 88, top: 11),
                        child: const Text(
                          "Due Time",
                          style: TextStyle(
                              fontSize: 12, color: Color(0xfff707070)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 22, top: 11),
                        child: const Text(
                          "20/29 lesson",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 51, top: 11),
                        child: const Text(
                          "November 2, 2021",
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: LinearPercentIndicator(
                      lineHeight: 14.0,
                      percent: 0.8,
                      backgroundColor: const Color(0xfffF6F6F6),
                      progressColor: const Color(0xfff00CDB1),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
class Item2 extends StatelessWidget {
  const Item2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 22,
        ),
        Row(
          children: [
            Container(
              width: 335,
              height: 200,
              decoration: BoxDecoration(
                  color: const Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.circular(17)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 22, top: 11),
                        height: 68,
                        width: 68,
                        decoration: BoxDecoration(
                            color: const Color(0xfffDCF3F5),
                            borderRadius: BorderRadius.circular(17)),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                height: 22,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 6, top: 22),
                                child:
                                const Text("Design Thingking Fundamental"),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  margin:
                                  const EdgeInsets.only(left: 6, top: 6),
                                  child: const Icon(
                                    Icons.person,
                                    color: Color(0xfffA9AEB2),
                                  )),
                              Container(
                                margin: const EdgeInsets.only(top: 6),
                                child: const Text(
                                  "Dianne Russell",
                                  style: TextStyle(
                                      color: Color(0xfffA9AEB2), fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 77,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xfffDCF3F5),
                                    borderRadius: BorderRadius.circular(12)),
                                margin: const EdgeInsets.only(left: 6, top: 6),
                                child: const Text(
                                  "Label",
                                  style: TextStyle(
                                      color: Color(0xfff00A9B7), fontSize: 12),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 22, top: 11),
                        child: const Text(
                          "Progress",
                          style: TextStyle(
                              fontSize: 12, color: Color(0xfff707070)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 88, top: 11),
                        child: const Text(
                          "Due Time",
                          style: TextStyle(
                              fontSize: 12, color: Color(0xfff707070)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 22, top: 11),
                        child: const Text(
                          "7/32 lesson",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 51, top: 11),
                        child: const Text(
                          "August 24, 2021",
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: LinearPercentIndicator(
                      lineHeight: 14.0,
                      percent: 0.3,
                      backgroundColor: const Color(0xfffF6F6F6),
                      progressColor: const Color(0xfff00CDB1),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
class Item3 extends StatelessWidget {
  const Item3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 22,
        ),
        Row(
          children: [
            Container(
              width: 335,
              height: 200,
              decoration: BoxDecoration(
                  color: const Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.circular(17)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 22, top: 11),
                        height: 68,
                        width: 68,
                        decoration: BoxDecoration(
                            color: const Color(0xfffFFB099),
                            borderRadius: BorderRadius.circular(17)),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                height: 22,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 6, top: 22),
                                child:
                                const Text("Design Thingking Fundamental"),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  margin:
                                  const EdgeInsets.only(left: 6, top: 6),
                                  child: const Icon(
                                    Icons.person,
                                    color: Color(0xfffA9AEB2),
                                  )),
                              Container(
                                margin: const EdgeInsets.only(top: 6),
                                child: const Text(
                                  "Dianne Russell",
                                  style: TextStyle(
                                      color: Color(0xfffA9AEB2), fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 77,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: const Color(0xfffDCF3F5),
                                    borderRadius: BorderRadius.circular(12)),
                                margin: const EdgeInsets.only(left: 6, top: 6),
                                child: const Text(
                                  "Label",
                                  style: TextStyle(
                                      color: Color(0xfff00A9B7), fontSize: 12),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 22, top: 11),
                        child: const Text(
                          "Progress",
                          style: TextStyle(
                              fontSize: 12, color: Color(0xfff707070)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 88, top: 11),
                        child: const Text(
                          "Due Time",
                          style: TextStyle(
                              fontSize: 12, color: Color(0xfff707070)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 22, top: 11),
                        child: const Text(
                          "28/40 lesson",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 51, top: 11),
                        child: const Text(
                          "August 24, 2021",
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: LinearPercentIndicator(
                      lineHeight: 14.0,
                      percent: 0.5,
                      backgroundColor: const Color(0xfffF6F6F6),
                      progressColor: const Color(0xfff00CDB1),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
