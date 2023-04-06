import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Home());

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int num1;
  late int num2;
  @override
  void initState() {
    this.num1 = 1;
    this.num2 = 1;
    super.initState();
  }

  int mynum() {
    Random random = Random();

    int num = random.nextInt(6) + 1;
    return num;
  }

  int mynum2() {
    Random random = Random();

    int num = random.nextInt(6) + 1;
    return num;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text("Dicee"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    num1 = mynum();
                    num2 = mynum2();
                  });
                },
                child: Image.asset('images/dice${num1}.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    num1 = mynum();
                    num2 = mynum2();
                  });
                },
                child: Image.asset('images/dice${num2}.png'),
              ),
            ),
          ]),
          // color: Colors.red,
        ),
      ),
    );
  }
}
