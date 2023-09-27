import 'package:flutter/material.dart';
import 'package:school_erp/views/commen/backgroud.dart';

import '../../utill/utils_image.dart';


class SchoolGallery extends StatefulWidget {
  const SchoolGallery({super.key});

  @override
  State<SchoolGallery> createState() => _SchoolGalleryState();
}

class _SchoolGalleryState extends State<SchoolGallery> {
  @override
  Widget build(BuildContext context) {
    return Background(
        top: 35,
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new, color: Colors.white,
                  ),
                  SizedBox(width:8 ,),
                  Text("School Gallery",
                    style: TextStyle(color: Colors.white, fontSize: 16),)
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                height: double.infinity, width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
                  color: Colors.white,
                ),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                            margin: EdgeInsets.only(left: 10, top: 15),
                            height: 225, width:163,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 15),
                              height: 132, width:163,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 15),
                              height: 186, width:163,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 15),
                              height: 132, width:163,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only( right: 5,top: 15,),
                              height: 132, width:163,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16, top: 15),
                              height: 150, width:163,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16, top: 15),
                              height: 225, width:163,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16, top: 15),
                              height: 132, width:163,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),


              ),
            ),
            
          ],
        ),

    );
  }
}
