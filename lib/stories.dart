import 'package:flutter/material.dart';
import 'package:kobastagram/story_item.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 1.0, color: Color(0x3333000000)))),
        child: Row(
          children: <Widget>[
            StoryItem(name: "Yuji mom", icon: Icons.account_circle),
            StoryItem(name: "Yuji dad", icon: Icons.account_circle),
            StoryItem(name: "Mayu mom", icon: Icons.account_circle),
            StoryItem(name: "Mayu dad", icon: Icons.account_circle),
          ],
        ));
  }
}