import 'package:flutter/material.dart';
import 'package:school_erp/utill/colors_picker.dart';
import 'package:school_erp/utill/utils_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: primeryColor,
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Image.asset(UtilsImage.HOME_PAGE_STATE_PATTERN),
              ),
              Stack(
                children: [

                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
