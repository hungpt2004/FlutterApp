import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marchproject/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Home'),
              ElevatedButton(
                onPressed: () async {
                  var navigationResult = await Navigator.push(
                      context, new MaterialPageRoute(builder: (context) => Page2()));
                }, child: Text('Go to Next Page'),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
