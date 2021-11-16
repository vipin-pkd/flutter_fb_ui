import 'package:flutter/material.dart';
import 'package:untitled/assets.dart';
import 'package:untitled/storycard.dart';


class StorySection extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.white,
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
         
        StoryCard(coverImage: sreeju,label: 'sreeju',status: sreeju,addButton: true,),
        StoryCard(coverImage: unni,label: 'vyshak',status: vyshak,addButton: false,),
        StoryCard(coverImage: dq,label: 'siva',status: siva,addButton: false,),
        StoryCard(coverImage: aju,label: 'ajesh',status: ajesh,addButton: false,),
        StoryCard(coverImage: thadi,label: 'vipin',status: vipingate,addButton: false,),
        StoryCard(coverImage: vallyachan,label: 'bhavik',status: bhavik,addButton: false,),
        
        
        ],
      ),
    );
  }
}
