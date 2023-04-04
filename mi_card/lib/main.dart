import 'package:flutter/material.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[800],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('./assets/images/logo.jpeg'),
            ),
            const Text(
              "Haileliul Baye ",
              style: TextStyle(
                  fontFamily: 'Fasthand',
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            const Text(
              "\t\thi it is me haileliule.do you rememberme?",
              style: TextStyle(fontFamily: 'dance', fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70),
              child: Divider(color: Colors.grey[400], thickness: 2),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      // prefix: Icon(Icons.phone),
                      fillColor: Colors.white54,
                      filled: true,
                      hintText: "+251966312479",
                      prefixIcon: Icon(Icons.phone),
                      /*     label: Text(
                        "Name",
                        style: TextStyle(color: Colors.red),
                      ), */
                      // enabledBorder: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      /*     disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.red),
                      ), */
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Colors.white54,
                      filled: true,
                      prefixIcon: Icon(Icons.mail),
                      hintText: "hailetechlover@gmail.com",
                      // enabledBorder: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      /*     disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.red),
                      ), */
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
