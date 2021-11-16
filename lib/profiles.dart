import 'package:flutter/material.dart';
import 'package:untitled/assets.dart';
import 'package:untitled/avathar.dart';

class Profile extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avathar(name: sreeju,status: false,),
      title: SizedBox(
        height: 40,
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            contentPadding: EdgeInsets.only(top: 4, left: 10),
            hintText: "Write something here...",
            hintStyle: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
