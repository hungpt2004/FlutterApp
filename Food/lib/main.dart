import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int likeCounter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tiêu đề bài viết'),
        ),
        body: Center(
          child: Column(
              children: [
            Text("Nội dung bài viết"),
            Divider(), //Dùng để chia hàm
            Text("Lượt Like: $likeCounter"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ++likeCounter;
                });
              },
              child: Text('Like'),
            )
          ]),
        ),
      ),
    );
  }
}
