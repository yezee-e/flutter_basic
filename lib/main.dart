import 'package:flutter/material.dart';
import 'package:flutter_basic/screen/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sumtong Client Flutter',
      home: const HomeScreen(),
    );
  }
}
