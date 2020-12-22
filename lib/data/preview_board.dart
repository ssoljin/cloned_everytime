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
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text(boardName,),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 200,
                    child: Text(content,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            isNew?Icon(Icons.fiber_new_rounded, color: Colors.red,):Container(),
          ],
        )
    );
  }
}