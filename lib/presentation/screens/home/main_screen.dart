import 'dart:html';

import 'package:cleancul/presentation/screens/home/calendar_screen.dart';
import 'package:cleancul/presentation/screens/home/home_screen.dart';
import 'package:cleancul/presentation/screens/home/location_screen.dart';
import 'package:cleancul/presentation/screens/home/profile_screen.dart';
import 'package:cleancul/utils/assets.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentPosition = 0;

  var pages = <Widget>[HomeScreen(), CalendarScreen(), LocationScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {

    final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: pages[currentPosition],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: theme.primaryColor,
        showSelectedLabels: true,
        currentIndex: currentPosition,
        iconSize: 15,
        selectedLabelStyle: theme.textTheme.bodyText2.copyWith(color: theme.primaryColor),
        unselectedLabelStyle: theme.textTheme.bodyText2.copyWith(color: Colors.grey),
        onTap: (int position){
          setState(() {
            currentPosition = position;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: MkImageAssets.bottomBarHome,
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: MkImageAssets.bottomBarCalendar,
            label: 'Calendar'
          ),
          BottomNavigationBarItem(
            icon: MkImageAssets.bottomBarLocation,
            label: 'Location'
          ),
          BottomNavigationBarItem(
            icon: MkImageAssets.bottomBarProfile,
            label: 'Profile'
          ),
        ],
        backgroundColor: Colors.white70,
      ),
    );
  }
}
