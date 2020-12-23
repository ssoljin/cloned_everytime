import 'package:everytime_clone/data/preview_post.dart';
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
  List<Widget> _posts=[
    PreviewPost('익명', '선배님들.. 전공 과목 중에 기컴프랑 프밍 이렇게 계속 코딩 과목 말아먹고 있는데 방학동안 c만 붙잡고 열심히 하면 실력이 오를까요..??ㅜㅜ 진짜 코딩이 너무 어렵고 전공이 안 맞는 것 같네요', '방금', 0, 0),
    PreviewPost('익명', '김XX교수님 성적알려줘요 현기증나요', '2분 전', 0, 2),
    PreviewPost('익명', '다들 시험 잘 보셨나요?? 전 망했어요 하하 이런', '10분 전', 4, 8),
    PreviewPost('장소정', '[속보] 장소정 이번주 안에 조합톡 완료할 것 같아', '15분 전', 2, 12),
    PreviewPost('익명', '헤으응.....', '16분 전', 0, 0),
    PreviewPost('익명', '시험 끝나서 놀길 기대했는데 코로나때문에 하 ㄹ수 있는게 없네... 놀거 추천좀 ㅎ', '20:50', 18, 11),
    PreviewPost('익명', '겨울 학부연구생 신청하면 휴학 안된다고 하던데 그게 21년 1학기 휴학이 불가능하다는 말인가요?', '18:28', 0, 1),
    PreviewPost('익명', '하 ㅋ 진짜 시험 아무것도 아니네 내가 X밥이었어', '12/22', 20, 12),
  ];
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
        children: _posts,
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.brush, color: Colors.red,),
        label: Text('글 쓰기'),
        backgroundColor: Colors.white,
        onPressed: ()=>{},
        elevation: 0.4,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}