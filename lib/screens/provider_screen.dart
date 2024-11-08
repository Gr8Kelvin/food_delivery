import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:food_delivery/model/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:logger/logger.dart';

class ProviderWidget extends StatefulWidget {
  const ProviderWidget({super.key});

  @override
  State<ProviderWidget> createState() => _ProviderWidgetState();
}

class _ProviderWidgetState extends State<ProviderWidget> {
  List<PhoneModel> phoneData = [];

  bool isloading = true;

  @override
  void initState() {
    super.initState();
    returnString().then((val) {
      Logger().d(val);
    });
    returnbool().then((val) {
      Logger().d(val);
    });
    fetchAlbum().then(
      (value) {
        Logger().d(value);

        setState(() {
          phoneData = value;
          isloading = false;
        });
      },
    );
  }

  int n = 0;

  Future<String> returnString() async {
    String firstName = "Steven";

    return firstName;
  }

  Future<bool> returnbool() async {
    bool myName = true;

    return myName;
  }

  Future<List<PhoneModel>> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://api.restful-api.dev/objects?id=3&id=5&id=10'));

    Logger().d(response.body);

    if (response.statusCode == 200) {
      for (var item in jsonDecode(response.body)) {
        phoneData.add(PhoneModel.fromJson(item));
      }
      return phoneData;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('List of Phones'),
          centerTitle: true,
        ),
        body: isloading
            ? Container(
                child: LoadingAnimationWidget.twistingDots(
                    leftDotColor: const Color(0xFF1A1A3F),
                    rightDotColor: const Color(0xFFEA3799),
                    size: 50))
            : ListView.builder(
                padding: EdgeInsets.all(20),
                itemCount: phoneData.length,
                itemBuilder: (context, value) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 250,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 213, 206, 206),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '${phoneData[value].id}',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '${phoneData[value].name}',
                              style: TextStyle(fontSize: 18),
                            ),
                            // Text(
                            //   '${phoneData?.data?.color ?? phoneData?.data?.dataColor ?? phoneData?.data?.strapColour}',
                            //   style: TextStyle(fontSize: 18),
                            // ),
                            // Text(
                            //   '${phoneData?.data?.capacity}',
                            //   style: TextStyle(fontSize: 18),
                            // ),
                            Text(
                              '${phoneData[value].data?.dataColor}',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                  return null;
                }));
  }
}
