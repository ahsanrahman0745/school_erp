import 'package:flutter/material.dart';
import 'package:school_erp/utill/utils_image.dart';

import '../../utill/colors_picker.dart';

class SpleshScreen extends StatelessWidget {
  const SpleshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: primeryColor,
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
    ));
  }
}
