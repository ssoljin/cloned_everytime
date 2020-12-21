import 'package:everytime_clone/data/everytime_widget.dart';
import 'package:everytime_clone/data/shortcut.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  List<EveryTimeWidget> _everyTimeWidgets = [
    EveryTimeWidget(Icons.table_chart, '오늘의 수업', '12월 22일 (화)',
        '컴퓨터그래픽스\n리눅스시스템응용설계(영어A강의)', Colors.red),
    EveryTimeWidget(Icons.table_chart, '오늘의 수업', '12월 22일 (화)',
        '컴퓨터그래픽스\n리눅스시스템응용설계(영어A강의)', Colors.red),
    EveryTimeWidget(Icons.table_chart, '오늘의 수업', '12월 22일 (화)',
        '컴퓨터그래픽스\n리눅스시스템응용설계(영어A강의)', Colors.red),
    EveryTimeWidget(Icons.table_chart, '오늘의 수업', '12월 22일 (화)',
        '컴퓨터그래픽스\n리눅스시스템응용설계(영어A강의)', Colors.red),
    EveryTimeWidget(Icons.table_chart, '오늘의 수업', '12월 22일 (화)',
        '컴퓨터그래픽스\n리눅스시스템응용설계(영어A강의)', Colors.red)];
  List<Shortcut> _shortcuts=[
    Shortcut(Icons.home, '학교\n홈', Colors.pink),
    Shortcut(Icons.menu_book, '열람실\n현황', Colors.orange),
    Shortcut(Icons.account_balance, '포탈', Colors.blue),
    Shortcut(Icons.directions_bus, '셔틀\n버스', Colors.yellow),
    Shortcut(Icons.volume_down, '학사\n공지', Colors.greenAccent),
    Shortcut(Icons.calendar_today, '학사\n일정', Colors.green),
    Shortcut(Icons.menu_book, '도서관', Colors.orange),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Container(
          child: Column(
            children: [
              Text('에브리타임', style: TextStyle(fontSize: 12, color: Colors.red,),),
              Text('중앙대'),
            ],
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.search, color: Colors.black,), onPressed: null),
          IconButton(icon: Icon(Icons.person_outline, color: Colors.black,), onPressed: null),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(//위젯
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _everyTimeWidgets.length,
              itemBuilder: (BuildContext context, int index){
                return everyTimeWidgetCard(_everyTimeWidgets[index]);
              },
            ),
          ),
          Container(//바로가기
            height: 100,
            child: ListView.builder(
              itemExtent: 55,
              scrollDirection: Axis.horizontal,
              itemCount: _shortcuts.length,
              itemBuilder: (BuildContext context, int index){
                return shortcutIcon(_shortcuts[index]);
              },
            ),
          ),
          Image.asset('assets/images/MapleStory_logo.png', height: 50, alignment: Alignment.center,),//광고
          Container(//임시
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

  GestureDetector everyTimeWidgetCard(EveryTimeWidget everyTimeWidget){
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width*0.8,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Icon(everyTimeWidget.icon, color: everyTimeWidget.color,size: 40,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(everyTimeWidget.title, style: TextStyle(fontSize: 20),),
                        Text(everyTimeWidget.subTitle, style: TextStyle(color: everyTimeWidget.color, fontSize: 15),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(everyTimeWidget.content)
          ],
        ),
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.only(left:15, bottom: 15),
      ),
    );
  }
  
  GestureDetector shortcutIcon(Shortcut shortcut){
    return GestureDetector(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0XFFEFEFEF),
            ),
            child: IconButton(icon: Icon(shortcut.icon, color: shortcut.color,),iconSize: 25, onPressed: null,),
          ),
          Text(shortcut.title,),
        ],
      ),
    );
  }

}

