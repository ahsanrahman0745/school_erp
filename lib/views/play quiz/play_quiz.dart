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

              

                  

              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 250,
                    height: 445,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.all( Radius.circular(13),),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 275,
                    height: 437,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.all( Radius.circular(15),),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 315,
                    height: 430,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all( Radius.circular(20),),),
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text("In 2017, which player became the leading run scorer of all tie in women's ODI cricket?",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        SizedBox(height: 28,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "A. Ahmad",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),

                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height:15 ,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green.shade50,
                              border: Border.all(color: Colors.green)
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "B. Usman",
                                style: TextStyle(color: Colors.green, fontSize: 12),
                              ),

                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.green,
                                child: Icon(Icons.done, color: Colors.white, size: 17,),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height:15 ,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red.shade50,
                              border: Border.all(color: Colors.red)
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "C. Ali",
                                style: TextStyle(color: Colors.red, fontSize: 12),
                              ),

                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.red,
                                child: Icon(Icons.close_rounded, color: Colors.white, size: 17,),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height:15 ,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              border: Border.all(color: Colors.grey)
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "D. Nauman",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),

                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),




                      ],
                    ),



                  ),
                ],
              ),

              
            ])
    );
  }
}
