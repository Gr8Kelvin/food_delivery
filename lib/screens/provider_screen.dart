import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:food_delivery/model/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:logger/logger.dart';
import 'package:intl/intl.dart';

class ProviderWidget extends StatefulWidget {
  const ProviderWidget({super.key});

  @override
  State<ProviderWidget> createState() => _ProviderWidgetState();
}

class _ProviderWidgetState extends State<ProviderWidget> {
  // Cards? cardData;

  List<Cards?> cardData = [];

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
          cardData = value;
          isloading = false;
        });

        returnbool().then((val) {
          Logger().d(val);
        });
      },
    );
  }

  // DateTime now = cardData[value]?.updatedAt;

  Future<String> returnString() async {
    String firstName = "Steven";

    return firstName;
  }

  Future<bool> returnbool() async {
    bool myName = true;

    return myName;
  }

  Future<List<Cards?>> fetchAlbum() async {
    final response =
        await http.get(Uri.parse('https://cat-fact.herokuapp.com/facts/'));

    Logger().d(response.body);

    if (response.statusCode == 200) {
      for (var item in jsonDecode(response.body)) {
        cardData.add(Cards.fromJson(item));
      }
      // cardData = Cards.fromJson(jsonDecode(response.body));

      return cardData;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    String formatDate(DateTime? date) {
      // final DateTime parsedDate = DateTime.parse(dateTime);
      final DateFormat formatter = DateFormat('E, d MMM yyyy HH:mm:ss');
      return formatter.format(date!);
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('List of Phones'),
          centerTitle: true,
        ),
        body: isloading
            ? Container(
                child: Center(
                child: LoadingAnimationWidget.discreteCircle(
                    color: const Color.fromARGB(255, 15, 15, 229),
                    secondRingColor: const Color(0xFFEA3799),
                    thirdRingColor: const Color.fromARGB(255, 238, 238, 11),
                    size: 100),
              ))
            : ListView.builder(
                padding: EdgeInsets.all(20),
                itemCount: cardData.length,
                itemBuilder: (context, value) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 560,
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
                              '${cardData[value]?.status?.verified}',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '${cardData[value]?.status?.sentCount}',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '${cardData[value]?.id}',
                              style: TextStyle(fontSize: 18),
                            ),
                            // Text(
                            //   '${cardData?.data?.color ?? cardData?.data?.dataColor ?? cardData?.data?.strapColour}',
                            //   style: TextStyle(fontSize: 18),
                            // ),
                            // Text(
                            //   '${cardData?.data?.capacity}',
                            //   style: TextStyle(fontSize: 18),
                            // ),
                            Text(
                              '${cardData[value]?.user}',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '${cardData[value]?.text}',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '${cardData[value]?.v}',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '${cardData[value]?.source}',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '${formatDate(cardData[value]?.updatedAt)}',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '${cardData[value]?.type}',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '${formatDate(cardData[value]?.createdAt)}',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '${cardData[value]?.deleted}',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '${cardData[value]?.used}',
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


//  int val = 0;
//           DateTime? updatedAt;
//           final String updatedAtString =
//               cardData[val]?.updatedAt?.toString() ?? '';
          
//           updatedAt = DateTime.parse(updatedAtString);
//           String formattedDate =
//               DateFormat('dd/MM/yyyy, hh:mm a').format(updatedAt);
//           print(formattedDate);
  