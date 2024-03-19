import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imagePaths = [
    'images/dice1.png',
    'images/dice2.png',
    'images/dice3.png',
    'images/dice4.png',
    'images/dice5.png',
    'images/dice6.png',
    // Thêm các đường dẫn hình ảnh khác theo nhu cầu của bạn
  ];
  int commonImageIndex1 = 0;
  int commonImageIndex2 = 0;

  void changeImages1() {
    setState(() {
      commonImageIndex1 = Random().nextInt(imagePaths.length);
    });
  }
  void changeImages2() {
    setState(() {
      commonImageIndex2 = Random().nextInt(imagePaths.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text("App"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  changeImages1();
                },
                child: Image.asset(
                  imagePaths[commonImageIndex1],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  changeImages2();
                },
                child: Image.asset(
                  imagePaths[commonImageIndex2],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
