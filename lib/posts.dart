import 'package:flutter/material.dart';
import 'package:kobastagram/heros.dart';
import 'package:kobastagram/post_item.dart';

// import 'post_item_okuyama_taiki.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0x33330000)))),
            child: Column(
              children: [
                PostItem(),
                // PostItemOkuyamaTaiki(),
                Heros(),
              ],
            )));
  }
}