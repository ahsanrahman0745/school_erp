import 'package:flutter/material.dart';


class MyBoxDecoration{

  static BoxDecoration topRightAndLeftCircule =  BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
  topLeft: Radius.circular(25),
  topRight: Radius.circular(25)));
}
