import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  Home({super.key});
  var c = <Color>[
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];
  Widget but() {
    return Expanded(
      flex: 1,
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(c[1]),
          ),
          onPressed: () {},
          child: const Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            but(),
            but(),
            but(),
            but(),
            but(),
            but(),
            but(),
          ],
        ),
      ),
    );
  }
}
