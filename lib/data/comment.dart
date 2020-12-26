import 'package:everytime_clone/data/reply.dart';

class Comment{
  Comment(this.name, this.content, this.time, this.like);
  String name;
  String content;
  String time;
  int like;
  List<Reply> replies;
}