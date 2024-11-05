import 'package:flutter/material.dart';
import 'package:food_delivery/screens/onboarding_page_fourth.dart';
import 'package:food_delivery/screens/onboarding_page_second.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage1 extends StatefulWidget {
  const OnBoardingPage1({super.key});

  @override
  State<OnBoardingPage1> createState() => _OnBoardingPage1State();
}

class _OnBoardingPage1State extends State<OnBoardingPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Lottie.asset('assets/images/lottie.json',
                frameRate: FrameRate.max,
                width: 250,
                height: 250,
                fit: BoxFit.cover),
            SizedBox(
              height: 10,
            ),
            Text('All your favorites',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'Roboto',
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Get all your loved foods in one once place,',
              style: TextStyle(fontSize: 18, fontFamily: 'Lato'),
            ),
            Text(
              'you just place the order we do the rest',
              style: TextStyle(fontSize: 17, fontFamily: 'Lato'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 10,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Slide.png'),
                    fit: BoxFit.contain),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnboardingPage2(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 241, 101, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: const Text(
                    'NEXT',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: SizedBox(
                width: 350,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnBoardingPage4(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
