import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  final String buttonAction1;
  final IconData iconData1;
  final Color color1;
  final String label1;
  final String buttonAction2;
  final IconData iconData2;
  final Color color2;
  final String label2;
  final String buttonAction3;
  final IconData iconData3;
  final Color color3;
  final String label3;


  ButtonSection({required this.buttonAction1
  ,required this.iconData1,required this.label1,
   required this.color1,required this.buttonAction2,
   required this.iconData2,required this.label2, required this.color2,
   required this.buttonAction3,required this.iconData3,required this.label3, required this.color3});
 

  Widget buttonFunction(
      {required String action,
      required IconData icon,
      required Color color,
      required String labal}) {
    // ignore: deprecated_member_use
    return FlatButton.icon(
      onPressed: () {
        print(action);
      },
      icon: Icon(
        icon,
        color: color,
      ),
      label: Text(labal),
    );
  }

  // function for vertical
  Widget section() {
    return VerticalDivider(
      thickness: 1,
      color: Colors.grey.shade300,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // ignore: deprecated_member_use
          buttonFunction(
              action: buttonAction1,
              icon: iconData1,
              color: color1,
              labal: label1),
          section(),
          buttonFunction(
               action: buttonAction2,
              icon: iconData2,
              color: color2,
              labal: label2),
          section(),
          buttonFunction(
               action: buttonAction3,
              icon: iconData3,
              color: color3,
              labal: label3),
        ],
        
      ),
      
    );
  }
}
