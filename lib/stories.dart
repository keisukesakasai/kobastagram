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
                    name: 'yuji mam',
                    imagePath: 'images/story_icon/yuji_mam_icon.jpg',
                    moviePath: 'images/sample.mp4'),
                StoryItem(
                    name: 'yuji dad',
                    imagePath: 'images/story_icon/yuji_dad_icon.png',
                    moviePath: 'images/sample.mp4'),
                StoryItem(
                    name: 'mayu mam&dad',
                    imagePath: 'images/story_icon/mayu_mam_icon.jpg',
                    moviePath: 'images/sample.mp4'),
                StoryItem(
                    name: 'yuji sis',
                    imagePath: 'images/story_icon/mayu_dad_icon.png',
                    moviePath: 'images/sample.mp4'),
                StoryItem(
                    name: 'yuji sis',
                    imagePath: 'images/story_icon/mayu_dad_icon.png',
                    moviePath: 'images/sample.mp4'),
                StoryItem(
                    name: 'Mayu sis',
                    imagePath: 'images/story_icon/mayu_dad_icon.png',
                    moviePath: 'images/sample.mp4'),
              ],
            )));
  }
}
