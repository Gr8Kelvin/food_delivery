import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_page.dart';
import 'package:lottie/lottie.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Lottie.asset('assets/images/location2.json',
            frameRate: FrameRate.max,
            width: 350,
            // width: MediaQuery.sizeOf(context).width * 0.9,
            // height: MediaQuery.sizeOf(context).height * 0.4,
            fit: BoxFit.cover),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 241, 101, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'ACCESS LOCATION    ',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                    size: 18,
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'DFOOD WILL ACCESS YOUR LOCATION,',
            style: TextStyle(
                fontSize: 18, fontFamily: 'Lato', fontWeight: FontWeight.w300),
          ),
        ),
        Text(
          'ONLY WHILE USING THE APP,',
          style: TextStyle(
              fontSize: 18, fontFamily: 'Lato', fontWeight: FontWeight.w300),
        ),
      ],
    ));
  }
}
