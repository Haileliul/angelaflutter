import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  static double Latitude, Longtude;
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // final sLatitude = '${LoadingScreen.Latitude}';
  // final sLongitude = '${LoadingScreen.Longtude}';

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      LoadingScreen.Latitude = position.latitude;
      LoadingScreen.Longtude = position.longitude;
    });

    getRequest();
  }

  void permission() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
  }

  final apiKey = 'a40d68cc61mshdd8c0fcb8da5c5bp143b69jsnf1b16875e472';

  // final apiUrl =
  //     'https://weatherbit-v1-mashape.p.rapidapi.com/current?lat=${-78.5}&lon=${38.5}';

  void getRequest() async {
    http.Response response = await http.get(
      Uri.parse(
          'https://weatherbit-v1-mashape.p.rapidapi.com/current?lat=${LoadingScreen.Latitude}&lon=${LoadingScreen.Longtude}'),
      headers: {
        'X-RapidAPI-Key': apiKey,
        'X-RapidAPI-Host': 'weatherbit-v1-mashape.p.rapidapi.com',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      print(responseData);
    } else {
      print("Request faild with status: ${response.statusCode}");
    }
  }

  @override
  void initState() {
    permission();
    getLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoadingScreen.Latitude != null
                    ? Text(
                        "${LoadingScreen.Latitude}",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    : Text("Latitude"),
                SizedBox(
                  width: 10,
                ),
                LoadingScreen.Longtude != null
                    ? Text(
                        "${LoadingScreen.Longtude}",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    : Text("Longtude"),
              ],
            ),
            /*   ElevatedButton(
              onPressed: () {
                //Get the current location
                permission();
                getLocation();
              },
              child: Text('Get Location'),
            ), */
          ],
        ),
      ),
    );
  }
}
