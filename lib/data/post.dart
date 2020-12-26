import 'package:everytime_clone/data/comment.dart';

class Post {
  Post(this.userName, this.title, this.content, this.time, this.likeNum, this.scrabNum){
    this.comments =[
      Comment('익명1', '분실물이라는건 원래 있었던 물건입니다. 당신은 해당사항이 없어요', '12/26 20:56', 13),
      Comment('익명2', 'ㄹㅇㅋㅋ', '12/26 20:56', 12),
      Comment('익명3', 'ㄹㅇㅋㅋ', '12/26 20:56', 0),
      Comment('익명4', '엇 저도 잃어버렸는데 어디서 찾을 수 있을까요 ㅜ', '12/26 20:56', 0),
      Comment('익명5', '저런 힘내시고', '12/26 20:56', 0),
    ];
  }

  final String userName;
  final String title;
  final String content;
  final String time;
  final int likeNum;
  final int scrabNum;
  List<Comment> comments;
}