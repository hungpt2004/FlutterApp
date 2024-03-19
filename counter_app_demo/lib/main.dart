import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App Demo",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[50],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("You have pushed the button this many times:"),
              const SizedBox(height: 30),
              Text(
                  "$count",
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Màu sắc của shadow
                          spreadRadius: 1, // Kích thước của shadow
                          blurRadius: 7, // Độ mờ của shadow
                          offset: const Offset(0, 3), // Độ lệch của shadow theo trục x và y
                        ),
                      ],
                    ),
                    height: 50,
                    width: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          --count;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple[50], // Màu nền của button
                        onPrimary: Colors.black, // Màu chữ trên button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Độ cong của góc
                        ),
                      ),
                      child: const Icon(Icons.remove),
                    ),
                  ),

                  const Padding(padding: EdgeInsets.only(right: 50)),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Màu sắc của shadow
                          spreadRadius: 1, // Kích thước của shadow
                          blurRadius: 7, // Độ mờ của shadow
                          offset: const Offset(0, 3), // Độ lệch của shadow theo trục x và y
                        ),
                      ],
                    ),
                    height: 50,
                    width: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          ++count;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple[50], // Màu nền của button
                        onPrimary: Colors.black, // Màu chữ trên button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Độ cong của góc
                        ),
                      ),
                      child: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
