import 'package:flutter/material.dart';
import 'package:school_erp/utill/utils_image.dart';
import 'package:school_erp/views/welcome/sign_in_screen.dart';

import '../../utill/colors_picker.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    moveToNextScreen(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            primeryColor,primeryColor2,Colors.blue
          ]
        )
      ),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Image.asset(UtilsImage.SPLESH_SCREEN_LOGO),
              ),
              Image.asset(UtilsImage.SPLESH_SCREEN_BOTTOM_IMAGE),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> moveToNextScreen({required BuildContext context}) async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
    );

  }
}



