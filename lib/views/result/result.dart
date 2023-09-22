import 'package:flutter/material.dart';

import '../../utill/colors_picker.dart';
import '../../utill/utils_image.dart';
import '../commen/backgroud.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    var size  = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
    backgroundColor: Color(0xFF6789CA),
    body: SingleChildScrollView(
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

      SizedBox(height:AppBar().preferredSize.height,),
    Stack(
      alignment: Alignment.center,
      children: [
        Container(
         //margin: EdgeInsets.only(top:20 ),
        child: Image(
        height: 250,
        width: size.width*5,
        image: AssetImage(UtilsImage.VECTOR),
        fit: BoxFit.fill,
        ),
        ),
        Container(
          child: Image(
            height: 136,
            width: 136,
            image: AssetImage(UtilsImage.GRADE_PERC),
          ),
        ),
        Positioned(
          right: 10,
          left: 10,
          top: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios_new,color: Colors.white,),
              Icon(Icons.share,color: Colors.white,),
            ],
          ),
        ),
      ],
    ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
              color: Colors.white,
            ),
              child: Column(
                children: [

                ],
              ),
          )
      ]
    )
    )
    ));
  }
}
