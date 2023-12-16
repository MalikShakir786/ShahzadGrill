import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/BoxShow.dart';
import 'package:flutter_application_1/widgets/detailWedget.dart';

class detail_Page extends StatelessWidget {
  const detail_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Center(
            child: Text(
              "Kabeer food",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ), // Text in the center
          actions: [
            IconButton(
              icon: Icon(Icons.heart_broken),
              onPressed: () {
                // Handle the action
              },
            ),
          ],
          backgroundColor: const Color(0x47333333),
          elevation: 0.0,
        ),
        body: detailWedgit("French Onion Chicken", "4.8", "42", "20", "Lunch"));
  }
}
