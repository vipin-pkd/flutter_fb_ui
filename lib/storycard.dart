import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/assets.dart';
import 'package:untitled/avathar.dart';
import 'package:untitled/icons.dart';

class StoryCard extends StatelessWidget {
  final String coverImage;
  final String label;
  final String status;
  final bool addButton;
  StoryCard({required this.coverImage,required this.label,required this.status,required this.addButton});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Container(
        padding: EdgeInsets.only(top: 5,left: 5),
        width: 150,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(coverImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [this.addButton? BarIcon(
                buttonIcon: Icons.add,
                buttonAction: "create Button",
                IconColor: Colors.blue,):
            Avathar(
              name: status,
              status: false,
              blueRing: true,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
