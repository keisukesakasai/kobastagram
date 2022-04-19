import 'package:flutter/material.dart';
import 'package:kobastagram/VideoPlayerPage.dart';

final _iconSize = 65.0;

class StoryItemYujiMom extends StatelessWidget {
  final String name;
  final IconData icon;

  StoryItemYujiMom({Key? key, required this.name, required this.icon})
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
                    image: AssetImage('images/yuji_mam_icon.jpg'),
                    fit: BoxFit.cover),
              )),
        ),
        Container(padding: EdgeInsets.symmetric(vertical: 0), child: Text(name))
      ],
    );
  }
}
