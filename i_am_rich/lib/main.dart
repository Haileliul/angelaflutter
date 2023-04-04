import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // surfaceTintColor: Colors.red,
          // shadowColor: Colors.red,
          elevation: 0,
          // bottomOpacity: 0.5,
          backgroundColor: Colors.blueGrey[800],
          title: const Text(
            "I'm Rich",
            style: TextStyle(color: Colors.amberAccent),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.blueGrey[800]),
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              image: DecorationImage(
                image: AssetImage('./assets/images/d1.jpeg'),
                // fit: BoxFit.cover,
              ),
            ),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Center(
                  child: Text(
                    "I'm Geting Rich ",
                    style: TextStyle(
                      height: 15,
                      color: Colors.amber,
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  bottom: 150,
                  left: 200,
                  right: 100,
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.2),
                              width: 2,
                            )),
                        width: 200,
                        height: 200,
                        // color: Colors.white.withOpacity(0.3),
                        child: const Center(
                          child: Text(
                            "Be Rich",
                            style: TextStyle(color: Colors.amber),
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
