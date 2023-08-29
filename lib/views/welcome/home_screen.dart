import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/utill/MyTestStyle.dart';
import 'package:school_erp/utill/colors_picker.dart';
import 'package:school_erp/utill/utils_image.dart';

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
                          borderRadius: BorderRadius.circular(25)),
                      child: Expanded(
                        child: GridView.builder(
                          padding: EdgeInsets.only(top: size.height * 0.14,left: size.width * 0.03,right: size.width * 0.03,),
                          shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 3 / 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                            itemCount: myGridList.length,
                            itemBuilder: (BuildContext ctx, index) {
                              return Container(
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
                              );
                            }),
                      ),
                    )),
                Positioned(
                    top: size.height * 0.27,
                    right: size.width * 0.03,
                    left: size.width * 0.03,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                                border:
                                    Border.all(width: 1, color: primeryColor)),
                            height: size.height * 0.2,
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
                            height: size.height * 0.2,
                            width: size.width * 0.5,
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
