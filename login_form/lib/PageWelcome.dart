import 'package:flutter/material.dart';
import 'package:login_form/PageLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:login_form/PageWelcome.dart';

class PageWelcome extends StatelessWidget {
  const PageWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("main page"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            ElevatedButton(
              onPressed: (){
                // Dấu / ại diện cho trang home
                // Nếu không thì truyền trang vào sau dấu /
                Navigator.popUntil(context, ModalRoute.withName('/'));
              }, child: Text('Back to login'),
            ),
          ],
        ),
      ),
    );
  }
}

