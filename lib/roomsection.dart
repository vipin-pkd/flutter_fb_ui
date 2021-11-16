import 'package:flutter/material.dart';
import 'package:untitled/assets.dart';
import 'package:untitled/avathar.dart';

class Chatroom extends StatelessWidget {
  Widget createRoom() {
    return
        // ignore: deprecated_member_use
        OutlineButton.icon(
      shape: StadiumBorder(),
      onPressed: () {
        print("create room");
      },
      icon: Icon(
        Icons.video_call,
        color: Colors.red,
      ),
      label: Text(
        "Create \nRoom",
        style: TextStyle(color: Colors.blue),
      ),
      borderSide: BorderSide(
        color: Colors.blue.shade100,
        width: 2,
      ),
    );
  }

  Widget status(String name) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Avathar(
        name: name,
        status: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          Container(
            padding: EdgeInsets.only(left: 4, right: 4),
            child: createRoom(),
          ),
          status(sreeju),
          status(vyshak),
          status(siva),
          status(bhavik),
          status(vipingate),
          status(ajesh),
          status(sreeju),
          status(vyshak),
          status(siva),
          status(bhavik),
          status(vipingate),
          status(ajesh),
          status(sreeju),
          status(vyshak),
          status(siva),
          status(bhavik),
          status(vipingate),
          status(ajesh),
          status(sreeju),
          status(vyshak),
          status(siva),
          status(bhavik),
          status(vipingate),
          status(ajesh),
        ],
      ),
    );
  }
}
