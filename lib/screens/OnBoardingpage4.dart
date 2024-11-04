import 'package:flutter/material.dart';
import 'package:food_delivery/screens/LoginPage.dart';
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
      body: LayoutBuilder(builder: (context, constraints) {
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
                      padding: EdgeInsets.only(top: 130),
                      child: Center(
                        child: Lottie.asset('assets/images/delivery.json',
                            frameRate: FrameRate.max,
                            // width: MediaQuery.sizeOf(context).width * 0.95,
                            // height: MediaQuery.sizeOf(context).height * 0.3,
                            fit: BoxFit.cover),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: Text('Free delivery offers',
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
                            image: AssetImage('assets/images/slide3.png'),
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
                              Navigator.of(context)
                                  .popUntil((route) => route.isFirst);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
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
                              'GET STARTED',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
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
      }),
    );
  }
}
