import 'package:everytime_clone/customed_ui/post_collection.dart';
import 'package:everytime_clone/data/everytime_widget.dart';
import 'package:everytime_clone/data/post.dart';
import 'package:everytime_clone/data/preview_board.dart';
import 'package:everytime_clone/data/shortcut.dart';
import 'package:everytime_clone/view/post_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  List<EveryTimeWidget> _everyTimeWidgets = [
    EveryTimeWidget(Icons.table_chart, '오늘의 수업', '12월 22일 (화)',
        '컴퓨터그래픽스\n리눅스시스템응용설계(영어A강의)', Colors.red),
    EveryTimeWidget(Icons.table_chart, '오늘의 수업', '12월 22일 (화)',
        '컴퓨터그래픽스\n리눅스시스템응용설계(영어A강의)', Colors.red),
    EveryTimeWidget(Icons.table_chart, '오늘의 수업', '12월 22일 (화)',
        '컴퓨터그래픽스\n리눅스시스템응용설계(영어A강의)', Colors.red),
    EveryTimeWidget(Icons.table_chart, '오늘의 수업', '12월 22일 (화)',
        '컴퓨터그래픽스\n리눅스시스템응용설계(영어A강의)', Colors.red),
    EveryTimeWidget(Icons.table_chart, '오늘의 수업', '12월 22일 (화)',
        '컴퓨터그래픽스\n리눅스시스템응용설계(영어A강의)', Colors.red)];
  List<Shortcut> _shortcuts=[
    Shortcut(Icons.home, '학교\n홈', Colors.pink),
    Shortcut(Icons.menu_book, '열람실\n현황', Colors.orange),
    Shortcut(Icons.account_balance, '포탈', Colors.blue),
    Shortcut(Icons.directions_bus, '셔틀\n버스', Colors.yellow),
    Shortcut(Icons.volume_down, '학사\n공지', Colors.greenAccent),
    Shortcut(Icons.calendar_today, '학사\n일정', Colors.green),
    Shortcut(Icons.menu_book, '도서관', Colors.orange),
  ];
  List<Widget> _boardList = [
    PreviewBoard('서울캠 자유게시판', '나는 메이플이 너무 좋은데 코딩이 사실 더 좋아', true),
    PreviewBoard('비밀게시판', '시험도 끝났는데 술마실 여자? 키는 183에 얼굴은 훈훈한 편이야', true),
    PreviewBoard('졸업생게시판', '사회생활 하기 힘드네요 상사가 너무 저를 좋아하는데 싫어하는 티를 낼 수도 없고 어떡하죠?', false),
    PreviewBoard('새내기게시판', '아 몰라 나 여기 나가기 싫어', true),
    PreviewBoard('서울캠 장터게시판', '칼하트 후드집업👶', true),
  ];
  List<Widget> _popularPostList;

  @override
  void initState() {
    super.initState();
    _popularPostList =[
      _buildCurrentPopularPost(Post('익명', '🦔당신은 돌아온 학점도치와 눈을 마주쳤습니다.🦔', '공감을 누른다면 28일에,\n A와 A+로 가득 차있는 걸 볼 수 있습니다.🦔', '12/22 23:53', 414, 14)),
      _buildCurrentPopularPost(Post('익명', null, 'ㅋㅋㅋㅋㅋ21학번들 익명으로 되어있으면 진짜 이름 안보이는줄 아는거 너무 귀엽다', '12/22 23:29', 123, 1)),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: Container(
          child: Column(
            children: [
              Text('에브리타임', style: TextStyle(fontSize: 12, color: Colors.red,),),
              Text('중앙대'),
            ],
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.search, color: Colors.black,), onPressed: null),
          IconButton(icon: Icon(Icons.person_outline, color: Colors.black,), onPressed: null),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(//위젯
            height: 175,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _everyTimeWidgets.length,
              itemBuilder: (BuildContext context, int index){
                return everyTimeWidgetCard(_everyTimeWidgets[index]);
              },
            ),
          ),
          Container(//바로가기
            height: 100,
            child: ListView.builder(
              itemExtent: 55,
              scrollDirection: Axis.horizontal,
              itemCount: _shortcuts.length,
              itemBuilder: (BuildContext context, int index){
                return shortcutIcon(_shortcuts[index]);
              },
            ),
          ),
          Image.asset('assets/images/MapleStory_logo.png', height: 50, alignment: Alignment.center,),//광고
          PostCollection('즐겨찾는 게시판', true, _boardList),
          PostCollection('실시간 인기 글', false, _popularPostList),
        ],
      ),
    );
  }

  GestureDetector everyTimeWidgetCard(EveryTimeWidget everyTimeWidget){
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width*0.8,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Icon(everyTimeWidget.icon, color: everyTimeWidget.color,size: 40,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(everyTimeWidget.title, style: TextStyle(fontSize: 20),),
                        Text(everyTimeWidget.subTitle, style: TextStyle(color: everyTimeWidget.color, fontSize: 15),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(everyTimeWidget.content)
          ],
        ),
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.only(left:5, bottom: 15, right: 10),
      ),
    );
  }

  GestureDetector shortcutIcon(Shortcut shortcut){
    return GestureDetector(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0XFFEFEFEF),
            ),
            child: IconButton(icon: Icon(shortcut.icon, color: shortcut.color,),iconSize: 25, onPressed: ()=>{print('${shortcut.title}')},),
          ),
          Text(shortcut.title,),
        ],
      ),
    );
  }

  Widget _buildCurrentPopularPost(Post post) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
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
            post.title!=null?Text(post.title, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold),):Container(),
            Text(post.content, maxLines: 2, overflow: TextOverflow.ellipsis,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(post.boardName, style: TextStyle(fontSize: 13, color: Colors.grey),),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.thumb_up_alt_outlined, color: Colors.red, size: 15,),
                        Text(post.likeNum.toString(), style: TextStyle(color: Colors.red, fontSize: 13),),
                        Text(' '),
                        Icon(Icons.mode_comment_outlined, color: Colors.greenAccent, size: 15,),
                        Text(post.comments.length.toString(), style: TextStyle(color: Colors.greenAccent, fontSize: 13),),
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

