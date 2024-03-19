import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: new Text("ListView Deep Dive",style: TextStyle(color: Colors.black, )),
      //   backgroundColor: Colors.white,
      //   //center
      //   centerTitle: true, // Đặt true để căn giữa tiêu đề của AppBar
      // ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: const Text('H'),
            ),
            title: const Text("HungDV"),
            subtitle: const Text("Flutter Developer"),
            trailing: const Icon(Icons.star, color: Colors.orange),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: const Text('N'),
            ),
            title: const Text("NguyenKLH"),
            subtitle: const Text("Android Developer"),
            trailing: const Icon(Icons.star, color: Colors.orange),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: const Text('H'),
            ),
            title: const Text("HungPV"),
            subtitle: const Text("IOS Developer"),
            trailing: const Icon(Icons.star, color: Colors.orange),
          )
        ],
      ),
    );


  //   return MaterialApp(
  //     title: 'Facebook Feed Example',
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text('Facebook Feed Example'),
  //       ),
  //       body: Column(
  //         children: [
  //           _buildContainer('HungDV', 'Flutter Developer', 'assets/image1.jpg'),
  //           _buildContainer('NguyenLKH', 'Flutter Developer', 'assets/image2.jpg'),
  //           _buildContainer('HungPV', 'Flutter Developer', 'assets/image3.jpg'),
  //         ],
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _buildContainer(String name, String subText, String imagePath) {
  //   return Container(
  //     padding: EdgeInsets.all(8.0),
  //     child: Row(
  //       children: [
  //         CircleAvatar(
  //           backgroundImage: AssetImage(imagePath),
  //           radius: 30,
  //         ),
  //         SizedBox(width: 16),
  //         Expanded(
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: [
  //               Text(
  //                 name,
  //                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
  //               ),
  //               Text(
  //                 subText,
  //                 style: TextStyle(fontSize: 14, color: Colors.grey),
  //               ),
  //             ],
  //           ),
  //         ),
  //         Icon(Icons.star, color: Colors.yellow),
  //       ],
  //     ),
  //   );
  }
}
