import 'package:flutter/material.dart';
import 'package:untitled/buttonsection.dart';

class Responses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 7, bottom: 7),
      child: ButtonSection(
              buttonAction1: "give a like",iconData1: Icons.thumb_up,color1: Colors.blue,label1: "Like",
              buttonAction2: "give a comment",iconData2: Icons.comment,color2: Colors.grey,label2: "Comment",
              buttonAction3: "share",iconData3: Icons.share,color3: Colors.grey,label3: "share",),
    );
  }
}
