import 'package:flutter/material.dart';
import 'package:kobastagram/story/videoplayer/yuji_brother_wife.dart';

final _iconSize = 65.0;

class StoryItemYujiBroWife extends StatelessWidget {
  final String name;
  final IconData icon;
  final String path = 'videos/yuji_family/yuji_brother.MOV';
  StoryItemYujiBroWife({Key? key, required this.name, required this.icon, })
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
                builder: (context) => VideoYujiBroWife(path),
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
                    image: AssetImage('images/story_icon/yuji_dad_icon.png'),
                    fit: BoxFit.cover),
              )),
        ),
        Container(padding: EdgeInsets.symmetric(vertical: 0), child: Text(name))
      ],
    );
  }
}
