import 'package:everytime_clone/data/current_popular_post.dart';
import 'package:flutter/material.dart';

class BulletinBoardPage extends StatefulWidget{

  BulletinBoardPage(this.title);
  final String title;
  @override
  _BulletinBoardPageState createState() => _BulletinBoardPageState(title);
}

class _BulletinBoardPageState extends State<BulletinBoardPage>{
  _BulletinBoardPageState(this.title);
  String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: ()=>{Navigator.pop(context)},),
        title: Text(title),
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.refresh, color: Colors.black), onPressed: null),
          IconButton(icon: Icon(Icons.search, color: Colors.black,), onPressed: null),
          IconButton(icon: Icon(Icons.menu, color: Colors.black,), onPressed: null),
        ],
      ),
      body: ListView(
        children: [
          CurrentPopularPost('익명', null, '방금', 'content', '', 0, 0)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.brush, color: Colors.red,),
        label: Text('글 쓰기'),
        backgroundColor: Colors.white,
        onPressed: ()=>{},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}