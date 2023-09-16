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
          Container(
           decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
             color: Colors.white
           ),
        )
      ],
    )


    );
  }
}
