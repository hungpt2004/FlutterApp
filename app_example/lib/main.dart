import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My App',
        home: Scaffold(
          // appBar: AppBar(
          //   title: Text('Hello World'),
          // ),
          body: Stack(children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          //tạo độ cong của container
                          borderRadius: BorderRadius.circular(100),
                        ),
                        alignment: Alignment.topLeft,
                        height: 150,
                        width: 150,
                        child: const Text(
                          "Box 1",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      boxMethod("Box 2", Alignment.bottomLeft),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      boxMethod("Box 3", Alignment.topRight),
                      boxMethod("Box 4", Alignment.topLeft),
                    ],
                  ),
                ]),
            Center(child: boxMethod("Center", Alignment.center, true))
          ]),
        ));
  }

  Container boxMethod(String name, Alignment direction,
      [bool boxRadius = false]) {
    return Container(
      decoration: BoxDecoration(
        color: boxRadius ? Colors.lightBlue : Colors.green,
        //tạo độ cong của container
        borderRadius: BorderRadius.circular(boxRadius ? 100 : 0),
      ),
      alignment: direction,
      height: 150,
      width: 150,
      child: Text(
        name,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
