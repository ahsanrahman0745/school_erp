import 'package:flutter/material.dart';
import 'package:school_erp/utill/MyTestStyle.dart';
import 'package:school_erp/utill/colors_picker.dart';
import 'package:school_erp/views/due_fee/pay_online.dart';

import '../../utill/utils_image.dart';
import '../commen/backgroud.dart';
import '../commen/border_radiou_top_circule.dart';

class StudentFee extends StatefulWidget {
  const StudentFee({super.key});

  @override
  State<StudentFee> createState() => _StudentFeeState();
}

class _StudentFeeState extends State<StudentFee> {
  List studentFeeList = [
    {
      "receiptNo": "32423",
      "month": "12-dec-2023",
      "paymentDate": "20-dec-2023",
      "totalPendingAmount": "30000",
      "status": "pay",
    },
    {
      "receiptNo": "32420",
      "month": "12-dec-2023",
      "paymentDate": "20-dec-2023",
      "totalPendingAmount": "39000",
      "status": "payed",
    },
    {
      "receiptNo": "32423",
      "month": "09-dec-2023",
      "paymentDate": "20-dec-2023",
      "totalPendingAmount": "70000","status": "payed",
    },
    {
      "receiptNo": "33424",
      "month": "11-dec-2023","status": "payed",
      "paymentDate": "20-dec-2023",
      "totalPendingAmount": "30000",
    },
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
                      Text("Fees Due",style: MyTestStyle.test14BoldWhite,)
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
              child: ListView.separated(
                padding: EdgeInsets.only(top: 30,left: 15,right: 15),
                shrinkWrap: true,
                  itemBuilder: (context,index){
                   return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey,width: 0.3)
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Receipt No:",style: MyTestStyle.test14Grey,),
                                    Text(studentFeeList[index]["receiptNo"],style: MyTestStyle.test14BoldBlack,),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Month:",style: MyTestStyle.test14Grey,),
                                    Text(studentFeeList[index]["month"],style: MyTestStyle.test14BoldBlack,),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Payment Date:",style: MyTestStyle.test14Grey,),
                                    Text(studentFeeList[index]["paymentDate"],style: MyTestStyle.test14BoldBlack,),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Total Pending Amount:",style: MyTestStyle.test14Grey,),
                                    Text(studentFeeList[index]["totalPendingAmount"],style: MyTestStyle.test14BoldBlack,),
                                  ],
                                ),

                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              if(studentFeeList[index]["status"]=="pay")
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PayOnline(data: studentFeeList[index])),
                              );
                              print("object");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: primeryColor2,
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))
                              ),
                              padding: EdgeInsets.symmetric(vertical: 7),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text(studentFeeList[index]["status"]=="pay" ? "Pay Now" : "Download",style: MyTestStyle.test14BoldWhite,),
                                  SizedBox(width: 10,),
                                  studentFeeList[index]["status"]=="pay" ? Icon(Icons.arrow_forward_rounded,color: Colors.white,)
                                      : Icon(Icons.download,color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder:  (context,index){
                    return SizedBox(height: 15,);
                  },
                  itemCount: studentFeeList.length),
            ),
          )
        ],
      ),
    );
  }
}
