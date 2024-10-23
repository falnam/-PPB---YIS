import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Index yang dipilih pada BottomNavigationBar
  int _selectedIndex = 0;

  // Daftar halaman sesuai dengan BottomNavigationBar
  static const List<Widget> _pages = <Widget>[
    Center(child: Text('Ini adalah halaman Home', style: TextStyle(fontSize: 24))),
    Center(child: Text('Ini adalah halaman Wisata', style: TextStyle(fontSize: 24))),
    Center(child: Text('Ini adalah halaman Profil', style: TextStyle(fontSize: 24))),
  ];

  // Mengubah halaman berdasarkan item yang dipilih
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Demo'),
      ),
      body: _pages[_selectedIndex], // Halaman berubah berdasarkan index
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Wisata',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Warna item yang dipilih
        onTap: _onItemTapped, // Mengubah halaman saat item dipilih
      ),
    );
  }
}
