import 'package:flutter/material.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Menu Tab Bar"),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.food_bank),
              text: "Menu",
            ),
            Tab(
              icon: Icon(Icons.calendar_month),
              text: "Calender",
            ),
            Tab(
              icon: Icon(Icons.history),
              text: "History",
            )
          ]),
          backgroundColor: Colors.blueAccent,
        ),
        body: TabBarView(children: [
          Center(
            child: Text("Ini Konten Menu"),
          ),
          Center(
            child: Text("Ini Konten Calender"),
          ),
          Center(
            child: Text("Ini Konten History"),
          ),
        ]),
      ),
    );
  }
}
