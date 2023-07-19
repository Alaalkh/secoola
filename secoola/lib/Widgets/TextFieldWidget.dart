import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFeildwidget extends StatelessWidget {
  final String hint;
  const TextFeildwidget({super.key, required this.hint});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
        const TextStyle(fontSize: 14, color: Color(0xFFFA9AEB2)),
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(
            color: Color(0xff00A9B7),
          ),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
