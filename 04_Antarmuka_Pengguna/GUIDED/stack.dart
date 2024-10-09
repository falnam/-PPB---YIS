import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Stack'),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 200,
            width: 200,
            color: Colors.yellow,
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 200,
            width: 200,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}