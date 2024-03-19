import 'package:flutter/material.dart';

import 'Button.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      title: 'My App',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'Select A Category',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontStyle: FontStyle.normal,
              fontFamily: 'Roboto',
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(
                    context: context,
                    delegate: CustomSearch()
                );
              }
            )
          ],
          centerTitle: true,
        ),
        body: Column(
          children: [
            Button(
              buttonText: 'Random',
              onPressed: () {
                print("You have chose random");
              },
              buttonColor: Colors.white,
              textColor: Colors.grey,
            ),
            Button(
              buttonText: 'Fashion',
              onPressed: () {
                print("Being grateful makes you gorgeous");
              },
              buttonColor: Colors.white,
              textColor: Colors.grey,
            ),
            Button(
              buttonText: 'Life',
              onPressed: () {
                // Do something when the button is pressed
              },
              buttonColor: Colors.white,
              textColor: Colors.grey,

            ),
            Button(
              buttonText: 'Love',
              onPressed: () {
                // Do something when the button is pressed
              },
              buttonColor: Colors.white,
              textColor: Colors.grey,
            ),
            Button(
              buttonText: 'Sport',
              onPressed: () {
                // Do something when the button is pressed
              },
              buttonColor: Colors.white,
              textColor: Colors.grey,
            ),
            TextButton(
              onPressed: () {
                print("Thoát khỏi ứng dụng !");
              },
              child: Text(
                "Exit",
                style: TextStyle(
                  backgroundColor: Colors.black26,
                  color: Colors.black, // Màu chữ
                  fontSize: 18, // Kích thước font chữ
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     // Add your code here
        //   },
        //   child: const Icon(Icons.add),
        // ),

        drawer: Drawer(

          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Text('Menu'),
              ),
              ListTile(
                title: const Text('Favourites'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  // Add your code here
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.green,
          onTap: (index) {
            // Add your code here
          },
        ),
      ),
    );
  }
}
class CustomSearch extends SearchDelegate {
  List<String> allData = [
    'Random','Fashion','Life','Love','Sport'
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: (){
            query='';
          }
        )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for(var item in allData){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      //itemCount = matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for(var item in allData){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      //itemCount = matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
  
}