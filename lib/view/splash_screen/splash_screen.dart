import 'dart:async';

import 'package:customer_parking_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../onboard_screens/onboard_screen.dart';

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
    Timer(const Duration(seconds: 4) ,
            () => Get.to(()=> const OnboardScreen()) );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextStyleWidget(
          title: 'Splash Screen',
          size: 20,
          weight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }
}
