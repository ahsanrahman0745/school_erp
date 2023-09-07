import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utill/MyTestStyle.dart';
import '../../utill/colors_picker.dart';
import '../../utill/utils_image.dart';
import 'my_text_feild.dart';


class Background extends StatelessWidget {
  Background({super.key,
    this.top=0,this.right=0,this.left=0,
    this.bottom=0,
    required this.child});
  Widget child;
  double? bottom,top,right,left;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [primeryColor, primeryColor2])),
          child: Stack(
            children: [
              Container(
                height: size.height,
              ),
              Positioned(
                top: size.height * 0.04,
                left: size.width * 0.01,
                right: size.width * 0.01,
                child: Image.asset(UtilsImage.HOME_PAGE_STATE_PATTERN),
              ),
              Positioned(
                  top: top,
                  left: left,
                  right: right,
                  bottom: bottom,

                  child: child),



            ],
          ),
        ),
      ),
    );
  }
}
