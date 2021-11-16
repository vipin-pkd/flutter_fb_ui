import 'package:flutter/material.dart';

class PostText extends StatelessWidget {
  final String postTitle;

  PostText({required this.postTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Center(child: Text(postTitle),),
      
    );
  }
}