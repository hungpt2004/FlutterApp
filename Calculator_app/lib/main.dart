import 'package:calculator_app/modal_bottom.dart';
import 'package:flutter/material.dart';

import 'DataItems.dart';
import 'calculator_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

final List<DataItem> items = [];

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Center(
            child: Text(
              'Tispy',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.black87,
                fontStyle: FontStyle.normal,
                fontFamily: 'Roboto',
              ),
            ),
          )),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Total Money",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(100,50),
                        maximumSize: Size(100,50),
                      ),
                      onPressed: (){
                      },
                      child: Text(
                        "10%",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(100,50),
                        maximumSize: Size(100,50),
                      ),
                      onPressed: (){},
                      child: Text(
                        "15%",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(100,50),
                          maximumSize: Size(100,50),
                        ),
                      onPressed: (){},
                      child: Text(
                        "20%",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100,50),
                      maximumSize: Size(100,50),
                    ),
                    onPressed: () {},
                    child:  const Text(
                      "Enter total money",
                      style: TextStyle(
                      color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //show ra modal nhập input task
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            isScrollControlled: true,
            context: context,
            builder: (BuildContext content) {
              print(context);
              return ModalBottom();
            },
          ); //showModalBottomSheet
        },
        backgroundColor: Colors.greenAccent,
        child: const Icon(
          Icons.people_alt_outlined,
          size: 40,
        ),
      ),
    );
  }
}
