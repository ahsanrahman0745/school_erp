import 'package:flutter/material.dart';
import 'package:school_erp/utill/MyTestStyle.dart';
import 'package:school_erp/utill/colors_picker.dart';

import '../commen/backgroud.dart';
import '../commen/border_radiou_top_circule.dart';

class PayOnline extends StatefulWidget {
  PayOnline({super.key, required this.data});
  var data;

  @override
  State<PayOnline> createState() => _PayOnlineState();
}

class _PayOnlineState extends State<PayOnline> {
 

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
                InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                      Text("Pay Online",style: MyTestStyle.test14BoldWhite,)
                    ],
                  ),
                ),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    children: [
                      SizedBox(height: 10,),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Date",style: MyTestStyle.test14Grey,),
                            SizedBox(height: 7,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(widget.data["month"],style: MyTestStyle.test16BoldBlack,),
                                Icon(Icons.date_range,color: Colors.grey,),
                              ],
                            ),
                            Divider()
                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Period",style: MyTestStyle.test14Grey,),
                            SizedBox(height: 7,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(widget.data["paymentDate"],style: MyTestStyle.test16BoldBlack,),
                                Icon(Icons.date_range,color: Colors.grey,),
                              ],
                            ),
                            Divider()
                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total Fees",style: MyTestStyle.test14Grey,),
                            SizedBox(height: 7,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("RS "+ widget.data["totalPendingAmount"],style: MyTestStyle.test16BoldBlack,),
                               SizedBox(),
                              ],
                            ),
                            Divider()
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: BoxDecoration(
                      color: primeryColor2,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text("Pay Now" ,style: MyTestStyle.test16BoldWhite,),
                        Icon(Icons.arrow_forward_rounded,color: Colors.white,)
                      ],
                    ),
                  )


                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}
