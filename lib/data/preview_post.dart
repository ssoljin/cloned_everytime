import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PreviewPost extends StatelessWidget{
  PreviewPost(this.userName, this.content, this.time, this.likeNum, this.commentNum);

  final String userName;
  final String content;
  final String time;
  final int likeNum;
  final int commentNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          )
        )
      ),
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.only(bottom: 10, top: 10),
      child: FlatButton(
        onPressed: ()=>{},
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
            Text(content, maxLines: 5, overflow: TextOverflow.ellipsis, textAlign: TextAlign.start,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.thumb_up_alt_outlined, color: Colors.red, size: 15,),
                  Text('$likeNum', style: TextStyle(color: Colors.red, fontSize: 13),),
                  Text(' '),
                  Icon(Icons.mode_comment_outlined, color: Colors.greenAccent, size: 15,),
                  Text('$commentNum', style: TextStyle(color: Colors.greenAccent, fontSize: 13),),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}