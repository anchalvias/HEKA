import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heka_app/screens/dashboard/dashboard.dart';
import 'package:heka_app/screens/mapspage/mapspage.dart';

class BottomNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomNavState();
  }
}

class BottomNavState extends State<BottomNav> {
  int cIndex = 0;
  List<Widget> screens = [
    new Dashboard(),
    new MapPage(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cIndex,
        onTap: (index) {
          setState(() {
            cIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              label: "dashboard", icon: Icon(Icons.dashboard)),
          BottomNavigationBarItem(label: "maps", icon: Icon(Icons.map)),
        ],
      ),
      body: screens[cIndex],
    );
  }
}
