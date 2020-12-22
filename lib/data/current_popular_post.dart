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
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(userName),
                Text(time),
              ],
            ),
          ),
          Text(title, overflow: TextOverflow.ellipsis,),
          Text(content, maxLines: 2, overflow: TextOverflow.ellipsis,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(boardName),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.thumb_up_alt_outlined, color: Colors.red,),
                      Text('$likeNum', style: TextStyle(color: Colors.red),),
                      Icon(Icons.mode_comment_outlined, color: Colors.greenAccent,),
                      Text('$commentNum', style: TextStyle(color: Colors.greenAccent),),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}