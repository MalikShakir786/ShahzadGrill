import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'about_us.dart';
import 'menu_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({super.key});

  var controller = PersistentTabController();
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home,size: 30,),
        title: ("Home"),
        textStyle: TextStyle(
          fontSize: 20,fontWeight: FontWeight.w700
        ),
        activeColorSecondary: Colors.deepOrangeAccent,
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.call,size: 30,),
        title: ("Contact Us"),
        textStyle: TextStyle(
            fontSize: 20,fontWeight: FontWeight.w700
        ),
        activeColorSecondary: Colors.deepOrangeAccent,
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.black,
      ),

    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        child: PersistentTabView(context, screens: [
          MenuScreen(),
          AboutUsScreen(),
        ],
          controller: controller,
          items: _navBarsItems(),
          navBarStyle: NavBarStyle.style7,
          resizeToAvoidBottomInset: true,
          bottomScreenMargin: 0,
          backgroundColor: Colors.deepOrangeAccent,
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
          ),
        ),
      ),
    );
  }
}
