import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marchproject/page3.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
          child: ElevatedButton(
            onPressed: (){
              // Dấu / ại diện cho trang home
              // Nếu không thì truyền trang vào sau dấu /
              Navigator.popUntil(context, ModalRoute.withName('/'));
            }, child: Text('Get home'),
          ),
      ),
    );
  }
}
