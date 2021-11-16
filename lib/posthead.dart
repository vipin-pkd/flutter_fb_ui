import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:untitled/assets.dart';
import 'package:untitled/avathar.dart';


class PostHead extends StatelessWidget {
  final String profilePicture;
  final String profileName;
  final String timeOfPost;

  PostHead({required this.profilePicture,required this.profileName,required this.timeOfPost});

  Widget listSection(){
    return ListTile(
      leading: Avathar(
        name: profilePicture,
        status: false,
        blueRing: false,
      ),
      title: Row(
        children: [
          Text(
            profileName,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Text(timeOfPost+" ago"),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.public,
            color: Colors.blue,
          ),
        ],
      ),
      trailing: IconButton(
        icon: Icon(Icons.more_horiz),
        onPressed: () {
          print('More icon pressed');
        },
      ),
      
    );
  }


  Widget build(BuildContext context) {
    return listSection();
    
  }
}
