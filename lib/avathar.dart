import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Avathar extends StatelessWidget {
  String name;
  bool status;
  bool blueRing;
  Avathar({required this.name, required this.status,this.blueRing=false });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: blueRing?Border.all(
              color: Colors.blueAccent,
              width: 3,
            ):null,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              name,
              width: 50,
              height: 50,
            ),
          ),
        ),
        status
            ? Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
