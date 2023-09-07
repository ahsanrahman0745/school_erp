import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/utill/MyTestStyle.dart';
import '../../utill/colors_picker.dart';
import '../../utill/utils_image.dart';
import '../commen/my_text_feild.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
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
                  top: size.height * 0.06,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.back,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "My Profile",
                                  style: MyTestStyle.test18White,
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.done,
                                    color: primeryColor2,
                                    size: 17,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Done",
                                    style: MyTestStyle.test14Pimery2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 30,horizontal: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25))),
                        height: size.height,
                        width: double.infinity,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10,),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),border: Border.all(width: 1,color: Colors.black)
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 100,
                                    padding: EdgeInsets.all(5),
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: CupertinoColors.inactiveGray,
                                      borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Image.network('https://cdn-icons-png.flaticon.com/512/4086/4086679.png'),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Student Name",
                                        style: MyTestStyle.test18BoldBlack,
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "Clas XI : Roll No: 1200",
                                        style: MyTestStyle.test14Grey,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(CupertinoIcons.camera)
                                ],
                              ),
                            ),

                            Container(
                              child: Column(
                                children: [
                                 Row(
                                   children: [
                                     Expanded(
                                         flex: 1,
                                         child: MyTestField(hintTitle: 'Adhar No', hintStyle: MyTestStyle.test14Grey,)),
                                     SizedBox(width: 10,),
                                     Expanded(
                                         flex: 1,
                                         child: MyTestField(hintTitle: 'Academic Year',hintStyle: MyTestStyle.test14Grey)),
                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Expanded(
                                         flex: 1,
                                         child: MyTestField(
                                           icon: Icon(Icons.lock,color: Colors.grey,),
                                           hintTitle: 'Admission Class', hintStyle: MyTestStyle.test14Grey,)),
                                     SizedBox(width: 10,),
                                     Expanded(
                                         flex: 1,
                                         child: MyTestField(
                                             icon: Icon(Icons.lock,color: Colors.grey,),
                                             hintTitle: 'Old Admission No',hintStyle: MyTestStyle.test14Grey)),
                                   ],
                                 ),
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: MyTestField(
                                            icon: Icon(Icons.lock,color: Colors.grey,),
                                            hintTitle: 'Date of Admission', hintStyle: MyTestStyle.test14Grey,)),
                                      SizedBox(width: 10,),
                                      Expanded(
                                          flex: 1,
                                          child: MyTestField(
                                              icon: Icon(Icons.lock,color: Colors.grey,),
                                              hintTitle: 'Date of Birth',hintStyle: MyTestStyle.test14Grey)),
                                    ],
                                  ),
                                  MyTestField(
                                      icon: Icon(Icons.lock,color: Colors.grey,),
                                      hintTitle: 'Parent Mail ID',hintStyle: MyTestStyle.test14Grey),
                                  MyTestField(
                                      icon: Icon(Icons.lock,color: Colors.grey,),
                                      hintTitle: 'Mother Name',hintStyle: MyTestStyle.test14Grey),
                                  MyTestField(
                                      icon: Icon(Icons.lock,color: Colors.grey,),
                                      hintTitle: 'Father Name',hintStyle: MyTestStyle.test14Grey),
                                  MyTestField(
                                      icon: Icon(Icons.lock,color: Colors.grey,),
                                      hintTitle: 'Permanent Address',hintStyle: MyTestStyle.test14Grey),

                                  MyTestField(
                                      icon: Icon(Icons.lock,color: Colors.grey,),
                                      hintTitle: 'Permanent Address',hintStyle: MyTestStyle.test14Grey),


                                ],
                              ),
                            )




                          ],
                        ),
                      ),
                    ],
                  )
              ),


            ],
          ),
        ),
      ),
    );
  }
}
