import 'package:flutter/material.dart';
import 'package:school_erp/views/commen/backgroud.dart';

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
                  Container(padding: EdgeInsets.only(top: 20, right: 230, left: 30,),
                    child: Column(
                      children: [SizedBox(height: 15,),
                            Container(
                              padding:EdgeInsets.all(5),
                              decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE6EFFF),),
                              child: Text("Mathematics", style: TextStyle(color: Colors.blueAccent,
                              fontSize:16),),
                            ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    )


    );
  }
}
