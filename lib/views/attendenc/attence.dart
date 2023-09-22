import 'package:flutter/material.dart';
import 'package:school_erp/utill/MyTestStyle.dart';
import 'package:school_erp/utill/utils_image.dart';
import 'package:school_erp/views/commen/border_radiou_top_circule.dart';
import 'package:table_calendar/table_calendar.dart';

import '../commen/backgroud.dart';

class StudenceAttendence extends StatefulWidget {
  const StudenceAttendence({super.key});

  @override
  State<StudenceAttendence> createState() => _StudenceAttendenceState();
}

class _StudenceAttendenceState extends State<StudenceAttendence> {
  bool attendenc = true, holiday = false;

  List myList=[
    {
      "dayTitle": "eid",
      "date": "10 Nev 2013",
      "day": "sunday"
    },
    {
      "dayTitle": "eid",
      "date": "10 Nev 2013",
      "day": "sunday"
    },{
      "dayTitle": "eid",
      "date": "10 Nev 2013",
      "day": "sunday"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Background(
      top: 30,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
                Center(
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white30),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              attendenc = true;
                              holiday = false;
                            });
                          },
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            alignment: Alignment.center,
                            height: 35,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: attendenc ? Colors.white : null),
                            child: Text(
                              "ATTENDANCE",
                              style: attendenc
                                  ? MyTestStyle.test14BoldPimery
                                  : MyTestStyle.test14BoldWhite,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              attendenc = false;
                              holiday = true;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: holiday ? Colors.white : null),
                            child: Text(
                              "HOLIDAY",
                              style: holiday
                                  ? MyTestStyle.test14BoldPimery
                                  : MyTestStyle.test14BoldWhite,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              decoration: MyBoxDecoration.topRightAndLeftCircule,
              child: Stack(
                children: [
                  Positioned(
                      bottom: 0,
                      child: Image.asset(UtilsImage.CLENDER_IMAGE)),

                  if(attendenc)
                  Column(
                    children: [
                      TableCalendar(
                        firstDay: DateTime.utc(2010, 10, 16),
                        lastDay: DateTime.utc(2030, 3, 14),
                        focusedDay: DateTime.now(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 30.0,
                                  top: 1.0,
                                  bottom: 1.0,
                                  right: 1.0,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Absent",style: TextStyle(color: Colors.red,fontSize: 14)),
                                        CircleAvatar(
                                            radius: 17,
                                          child: Text("02",style: TextStyle(color: Colors.red,fontSize: 14)),
                                          backgroundColor: Colors.red.shade100,
                                        ),


                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 30.0,
                                  top: 1.0,
                                  bottom: 1.0,
                                  right: 1.0,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Festival  & Holidays",style: TextStyle(color: Colors.green,fontSize: 14)),
                                        CircleAvatar(
                                            radius: 17,
                                          child: Text("02",style: TextStyle(color: Colors.green,fontSize: 14)),
                                          backgroundColor: Colors.green.shade100,
                                        ),


                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                     // Image.asset(UtilsImage.BOTTOM),
                    ],
                  ),
                  if(holiday)
                    Column(
                      children: [
                        TableCalendar(
                          firstDay: DateTime.utc(2010, 10, 16),
                          lastDay: DateTime.utc(2030, 3, 14),
                          focusedDay: DateTime.now(),
                        ),
                        ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                            shrinkWrap: true,
                            itemBuilder: (context,index){
                          return Container(
                            padding: EdgeInsets.all(15),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                               border: Border.all(width: 2,color: Colors.grey),
                              borderRadius: BorderRadius.circular(25)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(myList[index]["dayTitle"],style: MyTestStyle.test16BoldBlack,),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(myList[index]["date"],style: MyTestStyle.test14Grey,),
                                    Text(myList[index]["day"],style: MyTestStyle.test14Grey,),
                                  ],
                                )
                              ],
                            ),
                          );
                        }, separatorBuilder: (context,index){
                          return SizedBox(height: 15,);
                        },
                            itemCount: myList.length),
                       // Image.asset(UtilsImage.BOTTOM),
                      ],

                    ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
