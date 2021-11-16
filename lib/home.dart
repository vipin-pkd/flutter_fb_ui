import 'package:flutter/material.dart';
import 'package:untitled/assets.dart';
import 'package:untitled/buttonsection.dart';
import 'package:untitled/postcount.dart';
import 'package:untitled/postsection.dart';
import 'package:untitled/profiles.dart';
import 'package:untitled/roomsection.dart';

import 'package:untitled/icons.dart';
import 'package:untitled/storysection.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thindivider = Divider(
      thickness: 1,
      color: Colors.grey.shade300,
    );
    Widget thikdivider = Divider(
      thickness: 14,
      color: Colors.grey.shade300,
    );

    return MaterialApp(
      home: Scaffold(
//app bar section.
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 27,
              fontWeight: FontWeight.w900,
            ),
          ),
          actions: [
            BarIcon(
                buttonIcon: Icons.search,
                buttonAction: "search button clicked..."),
            BarIcon(
                buttonIcon: Icons.message,
                buttonAction: "message button clicked..."),
          ],
        ),

//profile section.
        body: ListView(
          children: [
            //divider Variable

            Profile(),
            thindivider,
            ButtonSection(
              buttonAction1: "live button pressed",
              iconData1: Icons.videocam,
              color1: Colors.red,
              label1: "Live",
              buttonAction2: "photo button pressed",
              iconData2: Icons.photo_library,
              color2: Colors.green,
              label2: "Photo",
              buttonAction3: "room button pressed",
              iconData3: Icons.video_call,
              color3: Colors.purple,
              label3: "Room",
            ),
            thikdivider,
            Chatroom(),
            thikdivider,
            StorySection(),
            thikdivider,
            PostSection(commentCount: '34k',viewCount: '234k',likeCount: "16k",postImage:whater,postTitle: "oh my god!",profileName: 'ajesh',profilePicture: ajesh,timeOfPost: "4h" ,),
            PostSection(commentCount: '30k',viewCount: '134k',likeCount: "15k",postImage:vipin,postTitle: "My new pic",profileName: 'Vipin',profilePicture: vipingate,timeOfPost: "7h" ,),
            PostSection(commentCount: '4k',viewCount: '34k',likeCount: "26k",postImage:siva,postTitle: "new shot",profileName: 'siva',profilePicture: siva,timeOfPost: "6h" ,),
            PostSection(commentCount: '50k',viewCount: '14k',likeCount: "5k",postImage:vallyachan,postTitle: "My father's pic",profileName: 'Bhavik',profilePicture: bhavik,timeOfPost: "1D" ,),
           
          ],
        ),
      ),
    );
  }
}
