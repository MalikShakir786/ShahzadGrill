import 'package:flutter/material.dart';
import 'package:resturant/global_widgets/cutom_navbar.dart';

import '../global_widgets/detailWedget.dart';


class detail_Page extends StatelessWidget {
  const detail_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              CustomNavbar(title: "Details"),
              detailWedgit("French Onion Chicken", "4.8", "42", "20", "Lunch"),
            ],
          ),
        ));
  }
}
