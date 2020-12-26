import 'package:flutter/material.dart';

class WritePostPage extends StatefulWidget{

  @override
  _WritePostPageState createState()=>_WritePostPageState();
}

class _WritePostPageState extends State<WritePostPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        leading: IconButton(
          icon: Icon(Icons.cancel_outlined),
          onPressed: ()=>{Navigator.pop(context)},
        ),
        title: Text('글 쓰기'),
        actions: [
          FlatButton(
            onPressed: ()=>{},
            child: Container(
              width: 50,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.red,
              ),
              child: Text('완료', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            )
          )
        ],
      ),
    );
  }
}