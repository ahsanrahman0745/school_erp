import 'package:flutter/material.dart';
import 'package:school_erp/views/commen/backgroud.dart';

import '../../utill/colors_picker.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Background(
        top: 35,
        child:Column(
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
               Text("Assignment",
               style: TextStyle(color: Colors.white, fontSize: 16),)
             ],
           ),
         ),
          SizedBox(height: 35,),
          Expanded(
            child: Container( height: double.infinity, width:double.infinity ,
             decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
               color: Colors.white
             ),
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Container(padding: EdgeInsets.all(15),margin: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey, width: 0.3,)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                            Container(
                              padding:EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                              decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFE6EFFF),),
                              child: Text("Mathematics", style: TextStyle(color: Colors.blueAccent,
                              fontSize:16),
                              ),
                            ),
                        SizedBox(height:7),
                        Text("Surface Area and Volumes", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Assign Date", style: TextStyle(fontSize: 16,
                                color:Colors.grey),),
                            Text("10 Nov 20", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Last Submission Date", style: TextStyle(fontSize: 16, color: Colors.grey,),),
                            Text("10 Dec 20", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,
                                color: Colors.black),)
                          ],
                        ),
                         SizedBox(height: 7,),
                        Container( width: double.infinity,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10) ,color: primeryColor) ,
                          child: Text("To be submitted", style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white,),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(padding: EdgeInsets.all(15),margin: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey, width: 0.3,)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFE6EFFF),),
                          child: Text("Science", style: TextStyle(color: Colors.blueAccent,
                              fontSize:16),
                          ),
                        ),
                        SizedBox(height:7),
                        Text("Structure of Atom", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Assign Date", style: TextStyle(fontSize: 16,
                                color:Colors.grey),),
                            Text("10 Oct 20", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Last Submission Date", style: TextStyle(fontSize: 16, color: Colors.grey,),),
                            Text("30 Oct 20", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,
                                color: Colors.black),)
                          ],
                        ),
                        SizedBox(height: 7,),
                        Container( width: double.infinity,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10) ,color: primeryColor) ,
                          child: Text("To be submitted", style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white,),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(padding: EdgeInsets.all(15),margin: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey, width: 0.3,)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFE6EFFF),),
                          child: Text("English", style: TextStyle(color: Colors.blueAccent,
                              fontSize:16),
                          ),
                        ),
                        SizedBox(height:7),
                        Text("My Best Friend Essay", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Assign Date", style: TextStyle(fontSize: 16,
                                color:Colors.grey),),
                            Text("10 Sep 20", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.black),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Last Submission Date", style: TextStyle(fontSize: 16, color: Colors.grey,),),
                            Text("15 Sep 20", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,
                                color: Colors.black),)
                          ],
                        ),

                      ],
                    ),
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
