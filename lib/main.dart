
import 'package:flutter/material.dart';
import 'package:resturant/screens/bottom_nav_bar.dart';
import 'package:resturant/screens/about_us.dart';
import 'package:resturant/screens/menu_screen.dart';

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
      home: CustomBottomNavBar(),
    );
  }
}
