import 'package:flutter/material.dart';

class PreviewBoard extends StatelessWidget{
  PreviewBoard(
    this.boardName,
    this.content,
    this.isNew,
  );

  final String boardName;
  final String content;
  final bool isNew;

  @override
  Widget build(BuildContext context) {
    var newWidth = MediaQuery.of(context).size.width - boardName.length*14 - (isNew?36:0) - 50;
    return FlatButton(
      onPressed: ()=>{print('$boardName')},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(boardName,),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: newWidth,
                  child: Text(content,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          isNew?Icon(Icons.fiber_new_rounded, color: Colors.red,):Text(''),
        ],
      )
    );
  }
}