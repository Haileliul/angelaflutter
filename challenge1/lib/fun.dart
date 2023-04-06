import 'package:flutter/material.dart';

Widget fun1() {
  return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 9, 9),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 100,
            color: Colors.red,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 195,
              )
            ],
          ),
          Container(
            width: 100,
            color: Colors.blue,
          ),
        ],
      ));
}

Widget fun2() {
  return Scaffold(
    backgroundColor: Colors.lightBlue[300],
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 150,
                  height: 50,
                  color: Colors.green,
                ),
                /*  Container(
                  width: 150,
                ), */
                Container(),
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 150,
                  height: 50,
                  color: Colors.green,
                ),
                /* Container(
                  width: double.infinity,
                ), */
                Container(),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
                /*  Container(
                  width: 150,
                ), */
                Container(),
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
                /* Container(
                  width: double.infinity,
                ), */
                Container(),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
