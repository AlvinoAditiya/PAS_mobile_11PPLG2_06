import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/controller/splashscreen.controller.dart';

class SplashscreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final controller = Get.find<SplashscreenController>();

    return Scaffold(
      backgroundColor:Colors.deepPurpleAccent,
      body: Center(
        child: Text(
          "Ini Splashscreen",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
