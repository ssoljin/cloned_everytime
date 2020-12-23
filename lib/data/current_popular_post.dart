import 'package:flutter/material.dart';

class CurrentPopularPost extends StatelessWidget{
  CurrentPopularPost(
    this.userName,
    this.title,
    this.time,
    this.content,
    this.boardName,
    this.likeNum,
    this.commentNum,
  );
  final String userName;
  final String title;
  final String time;
  final String content;
  final String boardName;
  final int likeNum;
  final int commentNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: FlatButton(
        onPressed: ()=>{print('$title')},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(userName, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(time, style: TextStyle(fontSize: 13, color: Colors.grey),),
                ],
              ),
            ),
            Text(title??'', overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold),),
            Text(content, maxLines: 2, overflow: TextOverflow.ellipsis,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(boardName, style: TextStyle(fontSize: 13, color: Colors.grey),),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.thumb_up_alt_outlined, color: Colors.red, size: 15,),
                        Text('$likeNum', style: TextStyle(color: Colors.red, fontSize: 13),),
                        Text(' '),
                        Icon(Icons.mode_comment_outlined, color: Colors.greenAccent, size: 15,),
                        Text('$commentNum', style: TextStyle(color: Colors.greenAccent, fontSize: 13),),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}