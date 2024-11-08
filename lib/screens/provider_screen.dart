import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_delivery/model/user_model.dart';
import 'package:http/http.dart' as http;

class providerwidget extends StatefulWidget {
  const providerwidget({super.key});

  @override
  State<providerwidget> createState() => _providerwidgetState();
}

class _providerwidgetState extends State<providerwidget> {
  initstate() {
    Future<PhoneModel> fetchAlbum() async {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        return PhoneModel.fromJson(
            jsonDecode(response.body) as Map<String, dynamic>);
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load album');
      }
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 150,
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
                  'Name: Big Phone',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Color: Blue',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Capacity: 20 GB',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
