import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:untitled/assets.dart';

class Post extends StatelessWidget {
  final String postImage;
  Post({required this.postImage});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5,bottom: 10),
      child:Image.asset(postImage)
      
    );
  }
}