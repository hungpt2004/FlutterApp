import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Căn giữa theo chiều dọc
            children: [
              ClipOval(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pinkAccent[100],
                  ),
                  child: Image.network(
                    'https://scontent.fdad2-1.fna.fbcdn.net/v/t39.30808-6/359447017_1475948263156000_5672425803864087405_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeFDkEEn9j1g4MiC1D7Qr3orpS8EteETP8mlLwS14RM_yR345PFLwMefKzJCUv0MKtub7s7mJth5Rk7HGLa6cGHt&_nc_ohc=DEWlOPX2DpAAX-4gZi8&_nc_ht=scontent.fdad2-1.fna&oh=00_AfB-ghQrQrbqWGcgiWOxzfQ-rfBZDGMRTgiotWVZKPbqXA&oe=65A7C852',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20), // Khoảng cách giữa ảnh và đoạn văn bản
              Column(
                children: [
                  Text(
                    "Pham Trong Hung",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10), // Khoảng cách giữa các đoạn văn bản
                  Text(
                    "FLUTTER DEVELOPER",
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 6,
                      color: Colors.grey[700],
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 150, // Chiều dài của gạch ngang
                    color: Colors.grey[700],
                  ),
                ],
              ),
              SizedBox(height: 30),
              // Các phần còn lại giữ nguyên
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        Icons.call,
                        color: Colors.teal,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      "+84 947 811 370          ",
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        Icons.email,
                        color: Colors.teal,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      "hungptde180384@fpt.edu.vn",
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
