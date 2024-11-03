import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/screens/)nboardingPage1.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({super.key});

  @override
  State<SecondSplashScreen> createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => OnBoardingPage1(),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 180,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/ellipse.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              )
                  .animate()
                  .fade(delay: 800.ms)
                  .slide(
                      begin: Offset(1.0, 0.0),
                      end: Offset.zero,
                      curve: Curves.easeIn)
                  .then(),
            ),
          ),
          Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Logo.png'),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 230,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/ellipse1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ).animate().fade(delay: 800.ms).slideY(curve: Curves.easeIn).then(),
          )
        ],
      ),
    );
  }
}
