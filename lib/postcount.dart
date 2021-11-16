import 'package:flutter/material.dart';

class PostCount extends StatelessWidget {
  final String likeCount;
  final String commentCount;
  final String viewCount;


  PostCount({required this.likeCount,required this.commentCount,required this.viewCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 0),
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Center(
                  child: Icon(
                    Icons.thumb_up,
                    size: 13,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Text(likeCount)
            ],
          ),
        ),
        Container(
          
          child: Row(
            children: [
              Text(commentCount),
              SizedBox(
                width: 10,
              ),
              Text(
                "Comment",
                style: TextStyle(color: Colors.grey.shade600),
              ),
              SizedBox(
                width: 6,
              ),
              Text(viewCount),
              SizedBox(
                width: 4,
              ),
              Text(
                "View",
                style: TextStyle(color: Colors.grey.shade600),
              ),
              SizedBox(width: 5,)
            ],
          ),
        )
      ],
    );
  }
}
