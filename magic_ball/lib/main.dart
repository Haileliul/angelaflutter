import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Home());

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int index;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Ask Me Anything",
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: Container(
          color: Colors.blue[700],
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  index = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball${index}.png'),
            ),
          )),
        ),
      ),
    );
  }
}
