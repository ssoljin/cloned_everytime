import 'package:everytime_clone/data/post.dart';
import 'package:everytime_clone/view/post_page.dart';
import 'package:flutter/cupertino.dart';
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
  List<Widget> _posts;

  @override
  void initState() {
    super.initState();
    _posts = [
      _buildPreviewPost(Post('익명', null, '선배님들.. 전공 과목 중에 기컴프랑 프밍 이렇게 계속 코딩 과목 말아먹고 있는데 방학동안 c만 붙잡고 열심히 하면 실력이 오를까요..??ㅜㅜ 진짜 코딩이 너무 어렵고 전공이 안 맞는 것 같네요', '방금', 0, 0)),
      _buildPreviewPost(Post('익명', '제목2', '김XX교수님 성적알려줘요 현기증나요', '2분 전', 0, 2)),
      _buildPreviewPost(Post('익명', '제목3', '다들 시험 잘 보셨나요? 난 망함', '10분 전', 0, 0)),
      _buildPreviewPost(Post('익명', '제목4', '헤으응.....', '16분 전', 0, 0)),
      _buildPreviewPost(Post('익명', '제목5', '시험 끝나서 놀길 기대했는데 코로나때문에 하 ㄹ수 있는게 없네... 놀거 추천좀 ㅎ', '20:50', 18, 11)),
      _buildPreviewPost(Post('익명', '제목6', '겨울 학부연구생 신청하면 휴학 안된다고 하던데 그게 21년 1학기 휴학이 불가능하다는 말인가요?', '18:28', 0, 1)),

    ];
  }

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
          IconButton(icon: Icon(Icons.more_vert, color: Colors.black,), onPressed: null),
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


  Widget _buildPreviewPost(Post post) {
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
        onPressed: ()=>{Navigator.push(context, CupertinoPageRoute(builder: (context)=>PostPage(post)))},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(post.userName, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(post.time, style: TextStyle(fontSize: 13, color: Colors.grey),),
                ],
              ),
            ),
            Text(post.content, maxLines: 5, overflow: TextOverflow.ellipsis, textAlign: TextAlign.start,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.thumb_up_alt_outlined, color: Colors.red, size: 15,),
                  Text(post.likeNum.toString(), style: TextStyle(color: Colors.red, fontSize: 13),),
                  Text(' '),
                  Icon(Icons.mode_comment_outlined, color: Colors.greenAccent, size: 15,),
                  Text(post.comments.length.toString(), style: TextStyle(color: Colors.greenAccent, fontSize: 13),),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}