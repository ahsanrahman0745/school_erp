import 'package:flutter/material.dart';

class MyTestField extends StatelessWidget {
  MyTestField({super.key,
    required this.hintTitle,
    required this.hintStyle,
    this.icon,

  });
  String hintTitle;
  TextStyle? hintStyle;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: icon,
        labelText: hintTitle,
        hintText: hintTitle,
        hintStyle: hintStyle,
      ),
    );
  }
}
