import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  String nameofmenubar;
  bool isclick;
  VoidCallback onclick;
  MenuBar(
      {required this.nameofmenubar,
      required this.isclick,
      required this.onclick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: GestureDetector(
        onTap: onclick,
        child: Center(
          child: Text(
            "$nameofmenubar",
            style: TextStyle(
                fontSize: isclick ? 24 : 20,
                color: isclick ? Colors.orangeAccent : Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
