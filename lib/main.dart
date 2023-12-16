import 'package:flutter/material.dart';
import 'package:shahzad_grills/screens/Restaurant%20App.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shahzad Grills',
      debugShowCheckedModeBanner: false,
      home: RestaurantApp()
    );
  }
}
