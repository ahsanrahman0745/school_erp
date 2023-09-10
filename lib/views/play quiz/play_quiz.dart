import 'package:flutter/material.dart';
import 'package:school_erp/views/commen/backgroud.dart';


class PlayQuiz extends StatefulWidget {
  const PlayQuiz({super.key});

  @override
  State<PlayQuiz> createState() => _PlayQuizState();
}

class _PlayQuizState extends State<PlayQuiz> {
  @override
  Widget build(BuildContext context) {
    return Background(
      top: 30,
        child:Column(
            children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios_new, color: Colors.white,),
                      SizedBox(width: 8,),
                      Text("Play Quiz",
                        style: TextStyle(color: Colors.white, fontSize: 20),),

                    ],
                  ),
                  Text("Skip",
                  style:TextStyle(color: Colors.white,fontSize: 20) ,),
                ],
              ),
            ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Question 1",
                        style: TextStyle(color: Colors.white,fontSize: 30),),
                        Text("/10",
                          style: TextStyle(color: Colors.white,fontSize: 16),),
                      ],
                    ),
                     Container(
                       padding: EdgeInsets.symmetric(horizontal: 15),
                       decoration: BoxDecoration(
                         color: Color(0xFF26B7F8FF),
                         borderRadius: BorderRadius.circular(25),
                       ),
                       child: Row(
                         children: [
                           Icon(Icons.people_alt,
                           color: Colors.white,
                           size: 15,),
                           SizedBox(width:4,),
                           Text("289",
                           style: TextStyle(color: Colors.white, fontSize: 16),)
                         ],
                       ),
                     )
                  ],
                ),
              ),
              SizedBox(height: 4,),
              Divider(),

              Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(15),
                    child: Text("In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                     margin: EdgeInsets.only(top: 5),
                     width: 315,
                     height: 430,
                     decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.all( Radius.circular(25),),),

                  ),
                ],
              )
            ])
    );
  }
}
