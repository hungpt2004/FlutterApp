import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//Sử dụng stl
//Class Tile extends StatelessWidget {
//
//
//
//
//
//}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.blueGrey;
  Color color2 = Colors.greenAccent;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Change Colors"),
        ),
        body: Center(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: color1,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: color2,
                  ),
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(onPressed: (){
                changeColors();
              }, child: Icon(Icons.change_circle)),
            ],
          )

        )
      ),
    );
  }

  //Reload build random colors
  void initState() {
    super.initState();
    color1 = Color(Random().nextInt(0xFFFFFFFF)).withOpacity(1.0);
    color2 = Color(Random().nextInt(0xFFFFFFFF)).withOpacity(1.0);
  }
  //Change Colors
  void changeColors(){
    setState(() {
      Color temp = color1;
      color1 = color2;
      color2 = temp;
    });
  }
  // // hàm tạo ra một Color bất kỳ
  // Color generateRandomColor() {
  //   // biến random sẽ giúp ta tạo ra 1 số ngẫu nhiên
  //   final Random random = Random();
  //
  //   // Màu sắc được tạo nên từ RGB, là một số ngẫu nhiên từ 0 -> 255 và opacity = 1
  //   return Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
  // }
}





