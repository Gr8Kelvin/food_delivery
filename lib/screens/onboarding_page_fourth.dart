import 'package:flutter/material.dart';
import 'package:food_delivery/screens/login_page.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage4 extends StatefulWidget {
  const OnBoardingPage4({super.key});

  @override
  State<OnBoardingPage4> createState() => _OnBoardingPage4State();
}

class _OnBoardingPage4State extends State<OnBoardingPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Lottie.asset('assets/images/delivery.json',
            frameRate: FrameRate.max,
            // width: MediaQuery.sizeOf(context).width * 0.95,
            // height: MediaQuery.sizeOf(context).height * 0.3,
            fit: BoxFit.cover),
        SizedBox(
          height: 30,
        ),
        Text('Free delivery offers',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'Roboto',
            )),
        SizedBox(
          height: 30,
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
          height: 30,
        ),
        Container(
          height: 10,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/slide3.png'),
                fit: BoxFit.contain),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 241, 101, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              child: const Text(
                'GET STARTED',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
