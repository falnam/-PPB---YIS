import 'package:flutter/material.dart';
import 'package:pertemuan5/jenis_list_view.dart';
import 'package:pertemuan5/flexible_expanded.dart';
import 'package:pertemuan5/custom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Custom(),  // Ensure that this widget is defined correctly in 'jenis_list_view.dart'
    );
  }
}
