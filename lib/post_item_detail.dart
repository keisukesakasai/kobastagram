import 'package:flutter/material.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hoshino_reo.dart';
import 'package:kobastagram/stories.dart';

final _iconSize = 30.0;

class PostItemDetail extends StatelessWidget {
  @override
  final StatefulWidget func;

  const PostItemDetail({
    Key? key,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0),
                  // child: Stories(),
                ),
                Center(
                    child: Column(
                  children: <Widget>[
                    //PostsYujiFriends(),
                    //Stories(),
                    func,
                    //Heros(),
                  ],
                )),
              ],
            ),
          )),
    );
  }
}
