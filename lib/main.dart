import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var changeBall = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Center(
              child: Text("Ask Me Anything"),
            ),
          ),
          body: Center(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeBall = Random().nextInt(5) + 1;
                    });
                  },
                  child: Expanded(
                      child: Image.asset("images/ball$changeBall.png")))),
        ));
  }
}
