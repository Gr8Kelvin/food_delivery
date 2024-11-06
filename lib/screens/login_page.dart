import 'package:flutter/material.dart';
import 'package:food_delivery/screens/forget_password_page.dart';
import 'package:food_delivery/screens/location_page.dart';
import 'package:food_delivery/screens/singup_page.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final ValueNotifier<UserCredential?> userCredential = ValueNotifier(null);

Future<dynamic> signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  } on Exception catch (e) {
    // TODO
    print('exception->$e');
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool obsureicon = false;
  bool checkbox = false;

  // String? _email;
  // String? _password;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    // final auth = Provider.of<Auth>(context);
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
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Container(
              alignment: Alignment(0, -0.1),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Please sign in to your account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.75,
              padding: EdgeInsets.all(25),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.27),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('EMAIL',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      TextFormField(
                        // onSaved: (_value) => onSaved,
                        // controller: _passwordController,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Email cannot be empty";
                          }
                          if (!value.contains("@")) {
                            return "Email is invalid";
                          }
                          if (!value.contains(".")) {
                            return "Email is invalid";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
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
                      SizedBox(height: 30),
                      Text(
                        'PASSWORD',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: !obsureicon,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Password cannot be empty";
                          }
                          if (value.length < 8) {
                            return "Password must be at least 8 characters";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obsureicon = !obsureicon;
                                });
                              },
                              icon: Icon(
                                obsureicon
                                    ? Icons.visibility_off
                                    : Icons.visibility,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Checkbox(
                              value: checkbox,
                              onChanged: (bool? value) {
                                setState(() {
                                  checkbox = value ?? false;
                                });
                              },
                            ),
                            Text('Remember me'),
                            Spacer(),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgetPasswordPage()));
                                },
                                child: Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                    color: Colors.orange,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () async {
                            // final isValid = _formKey.currentState!.validate();
                            if (_formKey.currentState!.validate()) {
                              try {
                                UserCredential userCredential =
                                    await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                            email: _emailController.text.trim(),
                                            password: _passwordController.text
                                                .trim());
                                //8

                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LocationPage(),
                                  ),
                                );
                              } catch (e) {
                                print("Sign-in failed: $e");
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 241, 101, 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          child: Text(
                            'LOG IN',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        height: 10,
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(fontSize: 18),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPage()));
                            },
                            child: Text(
                              '     SIGN UP',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Stack(children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Or',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 90,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/facebook.png'))),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 90,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/twitter.png'))),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        userCredential.value =
                                            await signInWithGoogle();
                                        if (userCredential.value != null &&
                                            userCredential.value!.user != null)
                                          print(userCredential
                                              .value!.user!.email);
                                      },
                                      child: Container(
                                        height: 85,
                                        width: 85,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/goole.png'))),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
