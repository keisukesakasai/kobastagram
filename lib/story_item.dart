import 'package:flutter/material.dart';

final _iconSize = 65.0;

class StoryItem extends StatelessWidget {
  final String name;
  final IconData icon;

  StoryItem({Key key, this.name, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            height: 64,
            child: IconButton(
              icon: Icon(icon),
              iconSize: _iconSize,
              onPressed: () => {},
            )),
        Container(padding: EdgeInsets.symmetric(vertical: 8), child: Text(name))
      ],
    );
  }
}