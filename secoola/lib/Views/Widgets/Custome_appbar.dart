import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget  {
  final String title;
  final List<Widget> actions;

  CustomAppBar({required this.title, required this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: actions,
      // Customize other properties like background color, elevation, etc.
    );
  }
}
