import 'package:flutter/material.dart';
import 'package:school_erp/views/commen/backgroud.dart';






class DateSheet extends StatefulWidget {
  const DateSheet({super.key});

  @override
  State<DateSheet> createState() => _DateSheetState();
}

class _DateSheetState extends State<DateSheet> {

  List myDateSheet =[
    {
      "subject": 'English',
      "date": '11',
      "day": 'Monday',
      "time": '9:00Am',
      "month": 'Jan'
    },

    {
      "subject": 'Computer',
      "date": '13',
      "day": 'Wednesday',
      "time": '9:00Am',
      "month": 'Jan'
    },

    {
      "subject": 'Science',
      "date": '15',
      "day": 'Friday',
      "time": '9:00Am',
      "month": 'Jan'
    },

    {
      "subject": 'Social Studies',
      "date": '18',
      "day": 'Monday',
      "time": '9:00Am',
      "month": 'Jan'
    },

    {
      "subject": 'Math',
      "date": '20',
      "day": 'Wednesday',
      "time": '9:00Am',
      "month": 'Jan'
    },

    {
      "subject": 'Urdu',
      "date": '21',
      "day": 'Friday',
      "time": '9:00Am',
      "month": 'Jan'
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Background(
      top: 30,
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
                  Text("Date Sheet",style: TextStyle(fontSize: 18, color: Colors.white),)
                ],
              ),
            ),
           SizedBox(height: 20,),
           Expanded(
             child: Container(
               height: double.infinity,
               decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(35), topLeft: Radius.circular(35)),
               color: Colors.white,
               ),
               child: Row(
                 children: [
                   Expanded(
                     flex:4,
                     child: Container(
                       padding: EdgeInsets.all(10),
                       child:ListView.builder
                         (
                         itemBuilder: (context,index){
                            return  Text(myDateSheet[index]["date"],style: TextStyle(fontSize: 15,
                                    color: Colors.black),);
                                    },) ,
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
