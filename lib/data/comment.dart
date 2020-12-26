import 'package:everytime_clone/data/reply.dart';

class Comment{
  Comment(this.name, this.content, this.time, this.like){
    this.replies=[
      Reply('익명1', '내용1', '30분 전', 0),
      Reply('익명2', '내용2', '27분 전', 0),
      Reply('익명3', '내용3', '14분 전', 0),
      Reply('익명4', '내용4', '10분 전', 7),
      Reply('익명5', '내용5', '9분 전', 0),
      Reply('익명6', '내용6', '방금', 3),
    ];
  }

  String name;
  String content;
  String time;
  int like;
  List<Reply> replies;
}