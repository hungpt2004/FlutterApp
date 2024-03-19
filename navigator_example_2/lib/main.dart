import 'package:flutter/material.dart';
import './firstPage.dart' as first;
import './secondPage.dart' as second;
import './thirdPage.dart' as third;
import './fourPage.dart' as third;
import './fifthPage.dart' as third;


void main() => runApp(new MaterialApp(
    home: new MyTabs(),
));

class MyTabs extends StatefulWidget {
  const MyTabs({super.key});

  @override
  State<MyTabs> createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin{
  late TabController controller;

  //Quản lý các tab trong TabView
  @override
  void initState() {
    super.initState();
    controller = new TabController(length:3, vsync: this);
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('ListView Deep Dive', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        bottom: new TabBar(controller: controller, tabs: <Tab> [
            new Tab(icon: new Icon(Icons.view_list)),
            new Tab(icon: new Icon(Icons.list_alt_rounded)),
            new Tab(icon: new Icon(Icons.line_style)),
        ])
      ),
        bottomNavigationBar: new Material(
            color: Colors.blueAccent,
            child: new TabBar(controller: controller, tabs: <Tab>[
              new Tab(icon: new Icon(Icons.view_list)),
              new Tab(icon: new Icon(Icons.list_alt_rounded)),
              new Tab(icon: new Icon(Icons.line_style)),
            ])),
        body: new TabBarView(controller: controller, children: <Widget>[

          //import as first, second, third ở trên
          new first.First(),
          new second.Second(),
          new third.Third(),
        ]));
  }
}
