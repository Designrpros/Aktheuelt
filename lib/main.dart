// lib/main.dart
import 'package:flutter/material.dart';
import 'pages/tabbed_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aktheuelt',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const TabbedPage(),  // No need to constrain the entire background here
    );
  }
}