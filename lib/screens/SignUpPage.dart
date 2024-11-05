import 'package:flutter/material.dart';
import 'package:food_delivery/screens/LoginPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 17, 52),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/assets.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: Alignment(0, -0.1),
            padding: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Column(
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Please sign up to get started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height * 0.8,
            padding: EdgeInsets.all(20),
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('NAME', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 40, left: 20),
                  hintText: 'john doe',
                  hintStyle: TextStyle(fontWeight: FontWeight.w200),
                  filled: true,
                  fillColor: Color(0xFFF1F5F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Text('EMAIL', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 40, left: 20),
                  hintText: 'example@gmail.com',
                  hintStyle: TextStyle(fontWeight: FontWeight.w200),
                  filled: true,
                  fillColor: Color(0xFFF1F5F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Text('PASSWORD', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      )),
                  contentPadding: EdgeInsets.only(top: 40, left: 20),
                  hintText: '* * * * * * * * * *',
                  hintStyle: TextStyle(fontWeight: FontWeight.w200),
                  filled: true,
                  fillColor: Color(0xFFF1F5F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Text('RE-TYPE PASSWORD',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      )),
                  contentPadding: EdgeInsets.only(top: 40, left: 20),
                  hintText: '* * * * * * * * * *',
                  hintStyle: TextStyle(fontWeight: FontWeight.w200),
                  filled: true,
                  fillColor: Color(0xFFF1F5F9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
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
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ]),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.white,
              mini: true,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
