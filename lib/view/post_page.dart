import 'package:everytime_clone/data/comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PostPage extends StatefulWidget{

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage>{
  bool temp = true;
  List<Widget> _comments;

  @override
  void initState() {
    super.initState();
    _comments=[
      _buildComment(Comment('익명1', '분실물이라는건 원래 있었던 물건입니다. 당신은 해당사항이 없어요', '12/26 20:56', 13)),
      _buildComment(Comment('익명2', 'ㄹㅇㅋㅋ', '12/26 20:56', 12)),
      _buildComment(Comment('익명3', 'ㄹㅇㅋㅋ', '12/26 20:56', 0)),
      _buildComment(Comment('익명4', '엇 저도 잃어버렸는데 어디서 찾을 수 있을까요 ㅜ', '12/26 20:56', 0)),
      _buildComment(Comment('익명5', '저런 힘내시고', '12/26 20:56', 0)),
      _buildComment(Comment('익명6', 'ㄹㅇㅋㅋ', '12/26 20:56', 0)),
      _buildComment(Comment('익명7', '아 ㄹㅇㅋㅋ만 치라고 익4, 익5 눈치없냐', '12/26 20:56', 0)),
      _buildComment(Comment('익명8', '이게 왜 핫게냐ㅋㅋㅋ', '12/26 20:56', 0)),
      _buildComment(Comment('익명9', '노잼.', '12/26 20:56', 0)),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: ()=>{Navigator.pop(context)},),
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.notifications_active_outlined, color: Colors.black), onPressed: null),
          IconButton(icon: Icon(Icons.refresh, color: Colors.black,), onPressed: null),
          IconButton(icon: Icon(Icons.menu, color: Colors.black,), onPressed: null),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              //height: MediaQuery.of(context).size.height - MediaQuery.of(context).,
              //margin: EdgeInsets.all(15),
              child:Container(
                margin: EdgeInsets.all(15),
                child:ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.person_outline, size: 50,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('익명', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                      Text('12/26 15:18', style: TextStyle(color: Colors.grey)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FlatButton(
                                      onPressed: ()=>{},
                                      minWidth: 0,
                                      padding: EdgeInsets.all(0),
                                      child: Container(
                                          height: 40,
                                          padding: EdgeInsets.all(10),
                                          margin: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: Colors.grey, width: 0.5),
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(Icons.thumb_up_alt_outlined, size: 18),
                                              Text('공감')
                                            ],
                                          )
                                      ),
                                    ),
                                    FlatButton(
                                      minWidth: 0,
                                      onPressed: ()=>{},
                                      padding: EdgeInsets.all(0),
                                      child: Container(
                                          height: 40,
                                          padding: EdgeInsets.all(10),
                                          margin: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: Colors.grey, width: 0.5),
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(Icons.star_border, size: 18,),
                                              Text('스크랩',)
                                            ],
                                          )
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                        Text('여기가 분실물 게시판 맞나요?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 10),
                          child: Text('여자친구 찾아요',),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Icon(Icons.thumb_up_alt_outlined, color: Colors.red, size: 15,),
                              Text('0 ', style: TextStyle(color: Colors.red, fontSize: 13),),
                              Icon(Icons.mode_comment_outlined, color: Colors.greenAccent, size: 15,),
                              Text('10 ', style: TextStyle(color: Colors.greenAccent, fontSize: 13),),
                              Icon(Icons.star_border, color: Colors.yellow, size: 15,),
                              Text('0 ', style: TextStyle(color: Colors.yellow, fontSize: 13),),
                            ],
                          ),
                        ),

                        Column(
                          children: _comments,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFFEEEEEE),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: temp,
                    onChanged: (value){
                    setState(() {
                          temp = value;
                        }
                      );
                    },
                    checkColor: Colors.white,
                    activeColor: Colors.red,
                  ),
                  Text('익명 ', style: TextStyle(color: temp?Colors.red:Colors.grey, fontWeight: FontWeight.bold),),
                  Flexible(
                    child: TextField(
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                        hintText: '댓글을 입력하세요',
                        hintStyle: TextStyle(color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0X00000000)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0X00000000)),
                        ),
                        focusColor: Colors.red,
                      ),
                    )
                  ),
                  IconButton(icon: Icon(Icons.send_outlined), color: Colors.red, onPressed: ()=>{}, splashRadius: 0.1,)
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget _buildComment(Comment comment){
    return Container(
      padding: EdgeInsets.only(top: 5, left: 10, right: 10),
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.5,
          )
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.person_outline),
                  Text(comment.name, style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  )
                ),
                child: Container(
                  width: 150,
                  child: Row(
                    children: [
                      IconButton(icon: Icon(Icons.mode_comment_outlined),onPressed: ()=>{},iconSize: 15,),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: Colors.grey,
                            ),
                            right: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        child: IconButton(icon: Icon(Icons.thumb_up_alt_outlined),onPressed: ()=>{}, iconSize: 15,),
                      ),

                      IconButton(icon: Icon(Icons.more_vert),onPressed: ()=>{}, iconSize: 15,),
                    ],
                  ),
                ),

              ),

            ],
          ),
          Text(comment.content),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(comment.time+' ', style: TextStyle(color: Colors.grey),),
                comment.like>0?Row(
                  children: [
                    Icon(Icons.thumb_up_alt_outlined, color: Colors.red, size: 15,),
                    Text(' '+comment.like.toString(), style: TextStyle(color: Colors.red),),
                  ],
                ):Container(),

              ],
            ),
          ),

        ],
      ),
    );
  }
}