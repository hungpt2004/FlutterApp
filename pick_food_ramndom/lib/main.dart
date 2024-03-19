import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _foodController = TextEditingController();
  String choiceFood = '';
  List<String> _food = ["phở bò", "bún chả", "mì quảng", "cơm tấm", "ma túy"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Restaurant"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("What do you want to pick"),
              Text("$choiceFood"),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    choiceFood = updateFood(_food);
                  });
                },
                child: const Text("Pick restaurant"),
              ),
            ],
          ),
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          children: [
            SpeedDialChild(
              child: Icon(Icons.restaurant_menu),
              backgroundColor: Colors.blue,
              label: 'Restaurant List',
              onTap: () {
                // Add your action when the "Restaurant List" button is pressed.
              },
            ),
            SpeedDialChild(
              child: Icon(Icons.add),
              backgroundColor: Colors.blue,
              label: 'Add Restaurant',
              onTap: () {
                setState(() {
                  _foodController.clear(); // Clear previous text
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('Add New Restaurant'),
                            SizedBox(height: 10),
                            TextField(
                              controller: _foodController,
                              decoration:
                              InputDecoration(labelText: 'Food Name'),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  String newFood = _foodController.text;
                                  String result = addFood(_food, newFood);
                                  print(result);
                                  Navigator.pop(context); // Close the bottom sheet after adding
                                });
                              },
                              child: const Text("Add Restaurant"),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

String updateFood(List<String> _food) {
  final random = Random();
  int randomIndex = random.nextInt(_food.length);
  return _food[randomIndex];
}

String addFood(List<String> _food, String newFood) {
  if (newFood.isNotEmpty) {
    _food.add(newFood);
    return "New Food added successfully";
  } else {
    return "New Food added fail";
  }
}
