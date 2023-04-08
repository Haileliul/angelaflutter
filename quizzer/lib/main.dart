import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> mark = [];
  late int indicater;
  int temp = 0;
  @override
  List ques = [
    {
      "q": "Is your name Haile ?",
      "a": 1,
    },
    {
      "q": "Do you hate me ?",
      "a": 0,
    },
    {
      "q": "Do you still love me ?",
      "a": 1,
    },
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: Container(
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    color: Colors.black12,
                    child: Center(
                      child: Text(
                        ques[temp]["q"].toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 9),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    indicater = 1;
                                    if (temp < ques.length) {
                                      temp = temp + 1;
                                    } else {
                                      () {};
                                    }
                                  });
                                  if (indicater == ques[temp - 1]["a"]) {
                                    print("ya it is one bro");
                                    mark.add(Icon(
                                      Icons.check,
                                      color: Colors.green,
                                    ));
                                  } else if (indicater != ques[temp - 1]["a"]) {
                                    mark.add(Icon(
                                      Icons.close,
                                      color: Colors.red,
                                    ));
                                  }
                                },
                                style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.green)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "True",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 9),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    indicater = 0;
                                    if (temp < ques.length) {
                                      temp = temp + 1;
                                    } else {
                                      () {};
                                    }
                                  });
                                  if (indicater == ques[temp - 1]["a"]) {
                                    print("ya it is one bro");
                                    mark.add(Icon(
                                      Icons.check,
                                      color: Colors.green,
                                    ));
                                  } else if (indicater != ques[temp - 1]["a"]) {
                                    mark.add(Icon(
                                      Icons.close,
                                      color: Colors.red,
                                    ));
                                  }
                                },
                                style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.red)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "False",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Container(
                            // color: Colors.blue,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: mark.length,
                              itemBuilder: (context, index) {
                                if (index < mark.length) {
                                  return mark[index];
                                }
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
