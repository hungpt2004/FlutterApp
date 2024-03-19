import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          centerTitle: true,
          title: Text(
              "Product Listing",
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white
              )
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            CustomCard(
              image: "images/image1.jpg",
              leading: "iPhone",
              content: "iPhone is the stylist phone ever",
              ending: "Price: 1000",
            ),
            CustomCard(
              image: "images/image2.jpg",
              leading: "Pixel",
              content: "Pixel is the most featureful phone ever",
              ending: "Price: 800",
            ),
            CustomCard(
              image: "images/image3.jpg",
              leading: "Laptop",
              content: "Laptop is the most productive development tool",
              ending: "Price: 2000",
            ),
            CustomCard(
              image: "images/image4.jpg",
              leading: "Tablet",
              content: "Tablet is the most useful device ever for meeting",
              ending: "Price: 1500",
            ),
            CustomCard(
              image: "images/image5.jpg",
              leading: "Pendrive",
              content: "Pendrive is useful storage medium",
              ending: "Price: 100",
            ),
            CustomCard(
              image: "images/image6.jpg",
              leading: "Floppy Drive",
              content: "Floppy Drive is useful rescue storage medium",
              ending: "Price: 20",
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String image;
  final String leading, content,ending;

  static const TextStyle textStyle = TextStyle(
    fontSize: 16,
  );

  const CustomCard({required this.image,required this.leading,required this.content,required this.ending});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        child: Row(
          children: [
            Image.asset(image),
            Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(leading,style: textStyle,),
                      Text(content,style: textStyle,),
                      Text(ending,style: textStyle,)
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}