import 'package:everytime_clone/view/bulletin_board_page.dart';
import 'package:everytime_clone/view/campus_pick_page.dart';
import 'package:everytime_clone/view/home_page.dart';
import 'package:everytime_clone/view/notice_page.dart';
import 'package:everytime_clone/view/timetable_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EveryTimeApplication());
}

class EveryTimeApplication extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EveryTimePage(),
    );
  }
}

class EveryTimePage extends StatefulWidget {
  @override
  _EveryTimePageState createState() => _EveryTimePageState();
}

class _EveryTimePageState extends State<EveryTimePage> {
  List<Widget> _widgets = [HomePage(), TimeTablePage(), BulletinBoardPage(), NoticePage(), CampusPickPage()];
  int _currentIndex = 0;
  void _setIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        currentIndex: _currentIndex,
        onTap: _setIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.table_chart_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.format_list_bulleted_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.alarm_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.bubble_chart_outlined), label: ""),
        ]
      ),
    );
  }
}
