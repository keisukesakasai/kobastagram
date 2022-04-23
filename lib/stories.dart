import 'package:flutter/material.dart';
import 'package:kobastagram/story/story_item_yuji_mom.dart';
import 'package:kobastagram/story/story_item_yuji_dad.dart';
import 'package:kobastagram/story/story_item_mayu_mom_dad.dart';
import 'package:kobastagram/story/story_item_yuji_brother.dart';
import 'package:kobastagram/story/story_item_yuji_brother_wife.dart';
import 'package:kobastagram/story/story_item_yuji_sister.dart';
import 'package:kobastagram/story/story_item_mayu_sister.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 1.0, color: Color(0x3333000000)))),
        child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                StoryItemYujiMom(name: "Yuji mom", icon: Icons.account_circle),
                StoryItemYujiDad(name: "Yuji dad", icon: Icons.account_circle),
                StoryItemMayuMomDad(name: "Mayu mom&dad ", icon: Icons.account_circle),
                StoryItemYujiBro(name: "Yuji bro ", icon: Icons.account_circle),
                StoryItemYujiBroWife(name: "Yuji bro's wife", icon: Icons.account_circle),
                StoryItemYujiSis(name: "Yuji sis", icon: Icons.account_circle),
                StoryItemMayuSis(name: "Mayu sis", icon: Icons.account_circle),
                //StoryItemMayuDad(name: "Mayu dad", icon: Icons.account_circle),
                //StoryItemMayuDad(name: "Mayu dad", icon: Icons.account_circle),
              ],
            )));
  }
}
