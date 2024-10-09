import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan List View'),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 100,
            width: 300,
            color: Colors.red,
            child: Center(child: Text("Type A")),
          ),
          Container(
            height: 100,
            width: 300,
            color: Colors.yellow,
            child: Center(child: Text("Type B")),
          ),
          Container(
            height: 100,
            width: 300,
            color: Colors.green,
            child: Center(child: Text("Type C")),
          ),
          Container(
            height: 100,
            width: 300,
            color: Colors.blue,
            child: Center(child: Text("Type D")),
          ),
        ],
      ),
    );
  }
}
