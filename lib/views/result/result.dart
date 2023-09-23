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
  List mySubject = [
    {
      "subject": "English",
      "totalMarks": "100",
      "obtainedMarks": "75",
      "grade": "B",
    },

    {
      "subject": "Urdu",
      "totalMarks": "100",
      "obtainedMarks": "87",
      "grade": "B",
    },

    {
      "subject": "Science",
      "totalMarks": "100",
      "obtainedMarks": "74",
      "grade": "B",
    },

    {
      "subject": "Social Studies",
      "totalMarks": "100",
      "obtainedMarks": "89",
      "grade": "B",
    },

    {
      "subject": "Maths",
      "totalMarks": "100",
      "obtainedMarks": "87",
      "grade": "B",
    },

    {
      "subject": "English",
      "totalMarks": "100",
      "obtainedMarks": "75",
      "grade": "B",
    },

    {
      "subject": "Computer",
      "totalMarks": "100",
      "obtainedMarks": "78",
      "grade": "B",
    },

  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFF6789CA),
            body:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: AppBar().preferredSize.height,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    //margin: EdgeInsets.only(top:20 ),
                    child: Image(
                      height: 250,
                      width: size.width * 5,
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
                        Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 9,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "You are Excellent,",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            Text(
                              "AKSHY SYAL!!",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey),
                        ),
                        margin: EdgeInsets.all(10),

                        child: Row(
                          children: [
                            Expanded(
                                flex: 7,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child:  ListView.builder(
                                      shrinkWrap: true,
                                      itemBuilder: (context,index){
                                        return  Text(mySubject[index]["subject"],style: TextStyle(fontSize: 15,
                                            color: Colors.black),);
                                      },

                                      itemCount: mySubject.length),
                                )),
                            Expanded(
                                flex: 3,
                                child: Container(alignment: Alignment.center,
                                  padding: EdgeInsets.all(10),
                                  color: Color(0xFFE6EFFF),
                                  child:  ListView.builder(
                                      shrinkWrap: true,
                                      itemBuilder: (context,index){
                                        return  Text(
                                          mySubject[index]["totalMarks"],
                                          textAlign: TextAlign.center,style: TextStyle(fontSize: 15,

                                            color: Colors.black),);
                                      },

                                      itemCount: mySubject.length),
                                )),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFCEE8C9),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15))
                                  ),
                                  child:  ListView.builder(
                                      shrinkWrap: true,
                                      itemBuilder: (context,index){
                                        return  Text("${mySubject[index]["obtainedMarks"]}  - ${mySubject[index]["grade"]}", textAlign: TextAlign.center,style: TextStyle(fontSize: 15,
                                            color: Colors.black),);
                                      },

                                      itemCount: mySubject.length),
                                )),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              )
            ])));
  }
}
