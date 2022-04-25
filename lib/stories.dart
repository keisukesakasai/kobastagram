import 'package:flutter/material.dart';
import 'package:kobastagram/story_item.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 1.0, color: Color(0x3333000000)))),
        child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                StoryItem(
                    name: "yuji's mam",
                    imagePath: 'images/story_icon/yuji_mam_icon.png',
                    moviePath: 'videos/yuji_family/yuji_mom.mp4'),
                StoryItem(
                    name: "yuji's dad",
                    imagePath: 'images/story_icon/yuji_dad_icon.png',
                    moviePath: 'videos/yuji_family/yuji_dad.mp4'),
                StoryItem(
                    name: "mayu's mam&dad",
                    imagePath: 'images/story_icon/mayu_mam_dad_icon.jpg',
                    moviePath: 'videos/mayu_family/mayu_mom_dad.mp4'),
                StoryItem(
                    name: "yuji's bro",
                    imagePath: 'images/story_icon/yuji_bro_icon.jpg',
                    moviePath: 'videos/yuji_family/yuji_brother.MOV'),
                StoryItem(
                    name: "yuji's bro's wife",
                    imagePath: 'images/story_icon/yuji_aniyome_icon.jpg',
                    moviePath: 'videos/yuji_family/yuji_brother_wife.MOV'),
                StoryItem(
                    name: "yuji's sis",
                    imagePath: 'images/story_icon/yuji_sis_icon.png',
                    moviePath: 'videos/yuji_family/yuji_sis.mp4'),
                StoryItem(
                    name: "Mayu' sis",
                    imagePath: 'images/story_icon/mayu_sis_icon.jpg',
                    moviePath: 'videos/mayu_family/mayu_sis.mp4'),
              ],
            )));
  }
}
