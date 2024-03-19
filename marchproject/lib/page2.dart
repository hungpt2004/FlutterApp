import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marchproject/page3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  var navigationResult = await Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Page3()));
                },
                child: Text('Go to Next Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
