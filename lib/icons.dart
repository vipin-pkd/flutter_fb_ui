import 'package:flutter/material.dart';

class BarIcon extends StatelessWidget {
  final IconData buttonIcon;
  final String buttonAction;
  // ignore: non_constant_identifier_names
  final Color IconColor;

  BarIcon(
      // ignore: non_constant_identifier_names
      {required this.buttonIcon, required this.buttonAction, this.IconColor=Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      margin: EdgeInsets.all(5),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          size: 25,
          color: IconColor,
        ),
        onPressed: () {
          print(buttonAction);
        },
      ),
    );
  }
}
