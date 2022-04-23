import 'package:flutter/material.dart';
import 'package:kobastagram/story/videoplayer/mayu_mom_dad.dart';

final _iconSize = 65.0;

class StoryItemMayuMomDad extends StatelessWidget {
  final String name;
  final IconData icon;
  final String path = 'videos/mayu_family/mayu_mom_dad.mp4';
  StoryItemMayuMomDad({Key? key, required this.name, required this.icon})
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
                builder: (context) => VideoMayuMomDad(path),
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
                    image: AssetImage('images/story_icon/mayu_mam_dad_icon.jpg'),
                    fit: BoxFit.cover),
              )),
        ),
        Container(padding: EdgeInsets.symmetric(vertical: 0), child: Text(name))
      ],
    );
  }
}
