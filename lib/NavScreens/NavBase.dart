import 'dart:async';

import 'package:clone_of_jumia_app_at_offline_state/NavScreens/Account.dart';
import 'package:clone_of_jumia_app_at_offline_state/NavScreens/Categories.dart';
import 'package:clone_of_jumia_app_at_offline_state/NavScreens/Feed.dart';
import 'package:clone_of_jumia_app_at_offline_state/NavScreens/Help.dart';
import 'package:clone_of_jumia_app_at_offline_state/NavScreens/Home.dart';
import 'package:flutter/material.dart';

class NavBase extends StatefulWidget {
  NavBase({Key? key}) : super(key: key);

  static String id = '/navigationbaseScreen';

  @override
  State<NavBase> createState() => _NavBaseState();
}

class _NavBaseState extends State<NavBase> {
  int CurrentIndex = 0;

  List NavPage = [
    HomeScreen(),
    CategoriesScreen(),
    FeedScreen(),
    AccountScreen(),
    HelpScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      //body 
      body: NavPage[CurrentIndex],

      // bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.orange,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt,
              ),
              label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.cast_for_education_sharp,
              ),
              label: "Feed"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: "Account"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.help_outline,
              ),
              label: "Help"),
        ],
        
        currentIndex: CurrentIndex,
        onTap: (int value) {
          CurrentIndex = value;
          setState(() {
            
          });
        },
      ),
    );
  }
}
