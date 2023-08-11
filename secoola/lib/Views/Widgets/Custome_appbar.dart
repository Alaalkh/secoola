import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final Color backcolor;
  const CustomAppBar({required this.title, required this.backcolor});

  @override
  Widget build(BuildContext context) {
    return AppBar(toolbarHeight: 168,    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(28),
          bottomRight: Radius.circular(28),
        )),
      title: title,
      backgroundColor: backcolor,automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(188);
}
