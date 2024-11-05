import 'package:flutter/material.dart';
import 'package:food_delivery/screens/onboarding_page_fourth.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage3 extends StatefulWidget {
  const OnBoardingPage3({super.key});

  @override
  State<OnBoardingPage3> createState() => _OnBoardingPage3State();
}

class _OnBoardingPage3State extends State<OnBoardingPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(
        height: 50,
      ),
      Lottie.asset('assets/images/chef.json',
          frameRate: FrameRate.max,
          // width: MediaQuery.sizeOf(context).width * 0.9,
          // height: MediaQuery.sizeOf(context).height * 0.3,
          fit: BoxFit.cover),
      SizedBox(
        height: 20,
      ),
      Text('Order from chosen chef',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'Roboto',
          )),
      SizedBox(
        height: 20,
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
        height: 20,
      ),
      Container(
        height: 10,
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/slide2.png'),
              fit: BoxFit.contain),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: 20,
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
                      builder: (context) => OnBoardingPage4(),
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
          SizedBox(
            width: double.infinity,
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
        ],
      ),
    ]));
  }
}
