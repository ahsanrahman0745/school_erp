import 'package:flutter/material.dart';
import 'package:school_erp/views/commen/backgroud.dart';

import '../../utill/colors_picker.dart';
import '../../utill/utils_image.dart';





class AskDoubts extends StatefulWidget {
  const AskDoubts({super.key});

  @override
  State<AskDoubts> createState() => _AskDoubtsState();
}

class _AskDoubtsState extends State<AskDoubts> {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Alexa Clark", style: TextStyle(fontSize: 20, color: Colors.black),),
                        Icon(Icons.arrow_drop_down,color: Colors.black,),
                      ],
                    ),
                    Divider()
                  ],
                ),
              ),

                Container(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Select Subject",style: TextStyle(fontSize: 16, color: Colors.grey),),
                      SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Math", style: TextStyle(fontSize: 20, color: Colors.black),),
                          Icon(Icons.arrow_drop_down,color: Colors.black,),
                        ],
                      ),
                      Divider()
                    ],
                  ),
                ),

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Title",style: TextStyle(fontSize: 16, color: Colors.grey),),
                      SizedBox(height: 7,),
                      Text("Factoring a Sum of 2 ", style: TextStyle(fontSize: 20, color: Colors.black),),
                      Divider()
                    ],
                  ),
                ),

                Container(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Doubt Discription",style: TextStyle(fontSize: 16, color: Colors.grey),),
                      SizedBox(height: 7,),
                      Text("----", style: TextStyle(color: Colors.black, fontSize: 20,),),
                      Divider()
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Container( width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(10) ,color: primeryColor) ,
                  child: Text("SEND", style: TextStyle(
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

