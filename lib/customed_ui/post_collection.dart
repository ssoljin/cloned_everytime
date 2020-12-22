import 'package:flutter/material.dart';

class PostCollection extends StatelessWidget{
  PostCollection(
    this.title,
    this.hasMore,
    this.children
  );
  final String title;
  final bool hasMore;
  List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      //height: MediaQuery.of(context).size.height*0.5,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: TextStyle(fontSize: 20),),
                (hasMore?
                FlatButton(
                  child: Text('더 보기 >', style: TextStyle(color: Colors.red, fontSize: 12)),
                  onPressed: ()=>{print('더 보기')},
                )
                    :Container()
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}