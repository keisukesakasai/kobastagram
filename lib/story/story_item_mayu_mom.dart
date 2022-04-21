import 'package:flutter/material.dart';
import 'package:kobastagram/VideoPlayerPage.dart';

final _iconSize = 65.0;

class StoryItemMayuMom extends StatelessWidget {
  final String name;
  final IconData icon;

  StoryItemMayuMom({Key? key, required this.name, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VideoPlayerPage('images/sample.mp4'),
              ),
            );
          },
          child: Container(
              margin: EdgeInsets.all(8),
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                border: Border.all(color: Colors.grey, width: 1),
                image: DecorationImage(
                    image: AssetImage('images/story_icon/mayu_mam_icon.jpg'),
                    fit: BoxFit.cover),
              )),
        ),
        Container(padding: EdgeInsets.symmetric(vertical: 0), child: Text(name))
      ],
    );
  }
}
