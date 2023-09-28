import 'package:flutter/material.dart';
import 'package:school_erp/views/commen/backgroud.dart';

import '../../utill/colors_picker.dart';
import '../../utill/utils_image.dart';





class AskDoubtsTwo extends StatefulWidget {
  const AskDoubtsTwo({super.key});

  @override
  State<AskDoubtsTwo> createState() => _AskDoubtsTwoState();
}

class _AskDoubtsTwoState extends State<AskDoubtsTwo> {
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
                  Icon(Icons.arrow_back_ios_new, color: Colors.white,),
                  SizedBox(width: 8,),
                  Text("Ask Doubts", style: TextStyle(fontSize: 18,color: Colors.white ),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(

              child: Container(

                height: double.infinity, width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),),
                  color: Colors.white,
                ),

                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                        child: Column(
                            children: [
                              SizedBox(height: 10,),

                              Container(

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Select Teacher",style: TextStyle(fontSize: 16, color: Colors.grey),),
                                    SizedBox(height: 7,),
                                    Text("Alexa Clark", style: TextStyle(fontSize: 20, color: Colors.black),),
                                    Divider()
                                  ],
                                ),
                              ),

                              Container(

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Application Title",style: TextStyle(fontSize: 16, color: Colors.grey),),
                                    SizedBox(height: 7,),
                                    Text("Fever", style: TextStyle(fontSize: 20, color: Colors.black),),
                                    Divider()
                                  ],
                                ),
                              ),

                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Description",style: TextStyle(fontSize: 16, color: Colors.grey),),
                                    SizedBox(height: 7,),
                                    Text("Dear Sir, As I am suffering with viral fever I will not be able to attend the classes for Today. Please accept this request and kindly grant me leave. ", style: TextStyle(fontSize: 20, color: Colors.black),),
                                    Divider()
                                  ],
                                ),
                              ),


                              SizedBox(height: 20,),

                              Container( width: double.infinity,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                                decoration:BoxDecoration(borderRadius: BorderRadius.circular(10) ,color: primeryColor) ,
                                child: Text("SEND REQUEST", style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white,),
                                ),
                              ),
                            ]
                        ),
                      ),
                      SizedBox(height:20 ,),
                      Image.asset(UtilsImage.BOTTOM),
                    ]
                ),
              ),
            ),

          ]
      ),
    );
  }
}

