import 'package:flutter/material.dart';

class TimeTablePage extends StatefulWidget{
  @override
  _TimeTablePageState createState() => _TimeTablePageState();
}

class _TimeTablePageState extends State<TimeTablePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: Container(
          child: Column(
            children: [
              Text('2020년 2학기', style: TextStyle(fontSize: 12, color: Colors.red,),),
              Text('시간표 1'),
            ],
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.add_box_outlined, color: Colors.black,), onPressed: null),
          IconButton(icon: Icon(Icons.settings_outlined, color: Colors.black,), onPressed: null),
          IconButton(icon: Icon(Icons.menu, color: Colors.black,), onPressed: null),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: MediaQuery.of(context).size.height*0.5,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.pinkAccent, width: 1),
              color: Color(0XFFFCF8F7),
              borderRadius: BorderRadius.circular(20.0),
            ),
          )
        ],
      ),

    );
  }
}