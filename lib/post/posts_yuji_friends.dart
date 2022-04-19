import 'package:flutter/material.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hoshino_reo.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ikeda_masashi.dart';
import 'package:kobastagram/post/yuji_friends/post_item_okuyama_taiki.dart';

class PostsYujiFriends extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<PostsYujiFriends> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0x33330000)))),
            child: Column(
              children: [
                PostItemIkedaMasashi(),
                PostItemOkuyamaTaiki(),
                PostItemHoshinoReo(),
              ],
            )));
  }
}
