import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible vs Expanded"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Text(
            "Flexible",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.green,
              ),
              Flexible(
                child: Container(
                  height: 100,
                  color: Colors.lightGreen,
                  child: Text(
                      "This is flexible widget, ir takes up remaining space but can chirnk if needed"),
                ),
              ),
              Icon(Icons.sentiment_satisfied_alt_outlined)
            ],
          ),
          const SizedBox(
            height: 10,
          
          ),
          const Text(
            "Expanded",
            style: TextStyle(fontSize: 18),
            ),

          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.green,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.lightGreen,
                  child: Text(
                      "This is flexible widget, ir takes up remaining space but can chirnk if needed"),
                ),
              ),
              Icon(Icons.sentiment_satisfied_alt_outlined)
            ],
          ),
        ],
      ),
  );
  }
}