import 'package:everytime_clone/data/comment.dart';

class Post {
  Post(this.userName, this.content, this.time, this.likeNum, this.comments);

  final String userName;
  final String content;
  final String time;
  final int likeNum;
  List<Comment> comments;
}