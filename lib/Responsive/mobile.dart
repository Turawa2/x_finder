// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:x_finder/utilities/constants.dart';
import 'package:x_finder/utilities/mobile/fomulas.dart';
import 'package:x_finder/utilities/mobile/homescreen.dart';
import 'package:x_finder/utilities/mobile/problem.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  PersistentTabController controller = PersistentTabController(initialIndex: 1);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PersistentTabView(
          context,
          controller: controller,
          navBarStyle: NavBarStyle.style15,
          decoration: const NavBarDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
            colorBehindNavBar: Colors.transparent,
          ),
          screens: const [
             Fomulas(), Homescreen(), ProblemHomescreen()
            
          ],
          confineInSafeArea: true,
          popAllScreensOnTapAnyTabs: true,
          popActionScreens: PopActionScreensType.all,
          backgroundColor: bgColor,
          screenTransitionAnimation: const ScreenTransitionAnimation(
              animateTabTransition: true,
              duration: Duration(milliseconds: 500),
              curve: Curves.ease),
          hideNavigationBar: false,
          popAllScreensOnTapOfSelectedTab: true,
          items: [
            PersistentBottomNavBarItem(
                icon: const Icon(Icons.widgets),
                title: 'Fomulas',
                activeColorSecondary: Colors.cyan,
                inactiveColorPrimary: Colors.grey.shade300),
            PersistentBottomNavBarItem(
                icon: const Icon(Icons.auto_stories_rounded),
                title: 'Learn',
                activeColorSecondary: Colors.white,
                inactiveColorPrimary: Colors.grey.shade300),
            PersistentBottomNavBarItem(
                icon: const Icon(Icons.help_rounded),
                title: 'Solutions',
                activeColorSecondary: Colors.cyan,
                inactiveColorPrimary: Colors.grey.shade300),
           
          ],

        ),
    );
  }
}
