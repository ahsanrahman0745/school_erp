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
                        borderWidth: 10,
                        // sets border, default 0.0
                        borderColor: primeryColor2,
                        // sets border color, default Colors.white
                        elevation: 5.0,
                        // sets elevation (shadow of the profile picture), default value is 0.0
                        foregroundColor: primeryColor2.withOpacity(0.5),
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
                    top: size.height * 0.26,
                    right: size.width * 0.03,
                    left: size.width * 0.03,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                border:
                                    Border.all(width: 0.03, color: primeryColor)),
                            height: size.height * 0.2,
                            width: size.width * 0.5,

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start,

                                children: [
                              Image.asset(UtilsImage.ICON_ATTENDES),
                            ],),
                          ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                border:
                                Border.all(width: 0.03, color: primeryColor)),
                            height: size.height * 0.2,
                            width: size.width * 0.5,
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
