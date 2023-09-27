import 'package:flutter/material.dart';
import 'package:school_erp/views/commen/backgroud.dart';

class DateSheet extends StatefulWidget {
  const DateSheet({super.key});

  @override
  State<DateSheet> createState() => _DateSheetState();
}

class _DateSheetState extends State<DateSheet> {
  @override
  Widget build(BuildContext context) {
    return Background(
      top: 40,
        child: Column(
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
                  Text("Datesheet",
                    style: TextStyle(color: Colors.white, fontSize: 16),)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Expanded(
                child: Container(
                height: double.infinity, width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(35), topLeft: Radius.circular(35)),
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
    );
  }
}
