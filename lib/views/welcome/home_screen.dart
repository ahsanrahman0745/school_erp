import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/utill/MyTestStyle.dart';
import 'package:school_erp/utill/colors_picker.dart';
import 'package:school_erp/utill/utils_image.dart';
import 'package:school_erp/views/assignment/assignment.dart';
import 'package:school_erp/views/due_fee/student_fee.dart';
import 'package:school_erp/views/my_profile/my_profile.dart';
import 'package:school_erp/views/play%20quiz/play_quiz.dart';
import 'package:school_erp/views/result/result.dart';

import '../attendenc/attence.dart';
import '../time_table/time_table.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var myGridList = [
    {
      "icon": UtilsImage.ICON_QUIZ,
      "title": "Play Quiz",
    },
    {
      "icon": UtilsImage.ICON_ASSIGMEMNT,
      "title": "Assignment",
    },
    {
      "icon": UtilsImage.ICON_HOLIDAY,
      "title": "School Holiday",
    },
    {
      "icon": UtilsImage.ICON_TIME_TABLE,
      "title": "Time Table",
    },
    {
      "icon": UtilsImage.ICON_RESULT,
      "title": "Result",
    },
    {
      "icon": UtilsImage.ICON_DATE_SHEET,
      "title": "Date Sheet",
    },


    {
      "icon": UtilsImage.ICON_DOUBTS,
      "title": "Ask Doubts",
    },
    {
      "icon": UtilsImage.ICON_GALLERY,
      "title": "School Gallery",
    },
    {
      "icon": UtilsImage.ICON_LEAVE,
      "title": "Leave Application",
    },
    {
      "icon": UtilsImage.ICON_PASSWORD,
      "title": "Change Password",
    },
    {
      "icon": UtilsImage.ICON_ENVENT,
      "title": "Events",
    },
    {
      "icon": UtilsImage.ICON_LOGOUT,
      "title": "Logout",
    },

  ];


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [primeryColor, primeryColor2])),
        child: Container(
          padding: EdgeInsets.only(top: size.height * 0.03),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Container(
                  height: size.height,
                ),
                Positioned(
                  top: size.height * 0.18,
                  left: size.width * 0.01,
                  right: size.width * 0.01,
                  child: Image.asset(UtilsImage.HOME_PAGE_STATE_PATTERN),
                ),
                Positioned(
                  top: size.height * 0.07,
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Student Name",
                            style: MyTestStyle.test24White,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Clas XI : Roll No: 1200",
                            style: MyTestStyle.test14White70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 15),
                              child: Text(
                                "2022-2023",
                                style: MyTestStyle.test14Pimery,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      CircularProfileAvatar(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyProfileScreen()),
                          );
                        },
                        'https://cdn-icons-png.flaticon.com/512/4086/4086679.png',
                        //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        // sets background color, default Colors.white
                        borderWidth: 1,
                        // sets border, default 0.0
                        borderColor: Colors.white,
                        // sets border color, default Colors.white
                        elevation: 5.0,
                        //sets foreground colour, it works if showInitialTextAbovePicture = true , default Colors.transparent
                        cacheImage: true,
                        // allow widget to cache image against provided url
                        showInitialTextAbovePicture:
                            true, // setting it true will show initials text above profile picture, default false
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: 0,
                    top: size.height * 0.35,
                    right: 0,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))),
                      child: Expanded(
                        child: GridView.builder(
                          padding: EdgeInsets.only(top: size.height * 0.14,left: size.width * 0.03,right: size.width * 0.03,),
                          shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 0.999,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                            itemCount: myGridList.length,
                            itemBuilder: (BuildContext ctx, index) {
                              return InkWell(
                                onTap: (){
                                  if(myGridList[index]["title"]==myGridList[0]["title"]){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => PlayQuiz()),
                                    );

                                  }
                                  else   if(myGridList[index]["title"]==myGridList[1]["title"]){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Assignment()),
                                    );
                                  }
                                  else if(myGridList[index]["title"]==myGridList[3]["title"]){
                                    Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=> TimeTable()),
                                    );
                                  }
                                  else if(myGridList[index]["title"]==myGridList[4]["title"]) {
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) => Result()),
                                    );
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF5F6FC),
                                      border: Border.all(width: 0.03,color: primeryColor),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("${myGridList[index]["icon"]}"),
                                      SizedBox(height: 20,),
                                      Text("${myGridList[index]["title"]}",style: MyTestStyle.test14Black,)
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    )),
                Positioned(
                    top: size.height * 0.27,
                    right: size.width * 0.03,
                    left: size.width * 0.03,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StudenceAttendence()),
                        );

                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  border:
                                      Border.all(width: 1, color: primeryColor)),
                              height: size.height * 0.22,
                              width: size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(UtilsImage.ICON_ATTENDES),
                                    Text(
                                      "80.39 %",
                                      style: MyTestStyle.test30BoldBlack,
                                    ),
                                    Text(
                                      "Attendance",
                                      style: MyTestStyle.test14Black38,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => StudentFee()),
                                );
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(UtilsImage.ICON_FEE),
                                      Text(
                                        "6400 RS",
                                        style: MyTestStyle.test30BoldBlack,
                                      ),
                                      Text(
                                        "Fees Due",
                                        style: MyTestStyle.test14Black38,
                                      ),
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                    border:
                                        Border.all(width: 1, color: primeryColor)),
                                height: size.height * 0.22,
                                width: size.width * 0.5,
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
