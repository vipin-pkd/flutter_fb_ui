import 'package:flutter/material.dart';
import 'package:untitled/assets.dart';
import 'package:untitled/post.dart';
import 'package:untitled/postbody.dart';
import 'package:untitled/postcount.dart';
import 'package:untitled/posthead.dart';
import 'package:untitled/respose.dart';

// ignore: must_be_immutable
class PostSection extends StatelessWidget {
  final String profilePicture;
  final String profileName;
  final String timeOfPost;
  final String postTitle;
  final String postImage;
  final String likeCount;
  final String commentCount;
  final String viewCount;


  

  

  PostSection({required this.profilePicture,required this.profileName,
  required this.timeOfPost,required this.postTitle,required this.postImage,
  required this.likeCount,
  required this.commentCount,required this.viewCount});



  Widget thindivider = Divider(
    thickness: 1,
    color: Colors.grey.shade300,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostHead(
          profileName: profileName,
          profilePicture: profilePicture,
          timeOfPost: timeOfPost,
        ),
         thindivider,
        PostText(postTitle: postTitle),
        Post(
          postImage: postImage,
        ),
        PostCount(
          likeCount: likeCount,
          commentCount: commentCount,
          viewCount: viewCount,
        ),
        thindivider,
        Responses(),
        thindivider,
      ],
    );
  }
}
