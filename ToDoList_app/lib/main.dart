import 'package:flutter/material.dart';
import 'package:todolist_app/model/DataItems.dart';
import 'package:todolist_app/widget/cardbody.dart';
import 'package:todolist_app/widget/cardmodal.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Tạo danh sách DataItems
  final List<DataItems> items = [
  ];

  void handleInputTask(String name){
    DataItems newItem = DataItems(id: DateTime.now().toString(), name: name);
    setState(() {
      items.add(newItem);
    });
  }
  void handleDelete(String id){
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Thanh App Bar
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        //Center hoac centerTitle = true trong appBar
        title: const Center(
            child: Text(
          'ToDoList ',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.white,
            fontStyle: FontStyle.normal,
            fontFamily: 'Roboto',
          ),
        )),
      ),
      //Giao diện của chương trình body
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
                items.map((item) => CardBody(item: item, handleDelete: handleDelete, index: items.indexOf(item),)).toList(),
              ),
        ),
      ),
      //Nút nhấn +
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
            return ModalBottom(addTask: handleInputTask);
          },
          ); //showModalBottomSheet
        },
        backgroundColor: Colors.orangeAccent,
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
      //),
    );
  }
}

