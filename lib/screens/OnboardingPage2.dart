import 'package:flutter/material.dart';
import 'package:food_delivery/screens/OnBoardingPage3.dart';
import 'package:food_delivery/screens/OnBoardingpage4.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage2 extends StatefulWidget {
  const OnboardingPage2({super.key});

  @override
  State<OnboardingPage2> createState() => _OnboardingPage2State();
}

class _OnboardingPage2State extends State<OnboardingPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final ScreenHeight = MediaQuery.of(context).size.height;
          final ScreenWidth = MediaQuery.of(context).size.width;

          return Column(children: [
            Container(
              height: ScreenHeight * 0.96,
              width: ScreenWidth,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: Center(
                          child: Lottie.asset('assets/images/lottie2.json',
                              frameRate: FrameRate.max,
                              width: 270,
                              // width: MediaQuery.sizeOf(context).width * 0.9,
                              // height: MediaQuery.sizeOf(context).height * 0.3,
                              fit: BoxFit.cover),
                        )),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 100),
                      child: Text('All your favorites',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontFamily: 'Roboto',
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Get all your loved foods in one once place,',
                        style: TextStyle(fontSize: 18, fontFamily: 'Lato'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Text(
                        'you just place the order we do the rest',
                        style: TextStyle(fontSize: 17, fontFamily: 'Lato'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Container(
                        height: 10,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/slide1.png'),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: SizedBox(
                            width: 350,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OnBoardingPage3(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 241, 101, 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: const Text(
                                'NEXT',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
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
                    ),
                  ],
                ),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
