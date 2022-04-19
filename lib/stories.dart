import 'package:flutter/material.dart';
import 'package:kobastagram/story/story_item_yuji_mom.dart';
import 'package:kobastagram/story/story_item_yuji_dad.dart';
import 'package:kobastagram/story/story_item_mayu_mom.dart';
import 'package:kobastagram/story/story_item_mayu_dad.dart';


class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 1.0, color: Color(0x3333000000)))),
        child: Row(
          children: <Widget>[
            StoryItemYujiMom(name: "Yuji mom", icon: Icons.account_circle),
            StoryItemYujiDad(name: "Yuji dad", icon: Icons.account_circle),
            StoryItemMayuMom(name: "Mayu mom", icon: Icons.account_circle),
            StoryItemMayuDad(name: "Mayu dad", icon: Icons.account_circle),
          ],
        ));
  }
}