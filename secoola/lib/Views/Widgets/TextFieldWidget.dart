import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

class TextFeildwidget extends StatelessWidget {
  final String hint;
  final Icon icon;
  final bool obscuretext;

  const TextFeildwidget(
      {super.key,
      required this.hint,
      required this.icon,
      required this.obscuretext});

  @override
  Widget build(BuildContext context) {
    final validator1 = ValidationBuilder().email().maxLength(50).build();

    return TextFormField(
      validator: validator1,
      obscureText: obscuretext,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: icon,
        hintStyle: const TextStyle(fontSize: 14, color: Color(0xFFFA9AEB2)),
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
