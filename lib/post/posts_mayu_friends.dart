import 'package:flutter/material.dart';
import 'package:kobastagram/post/mayu_friends/post_item_yamada_tanaka.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hoshino_reo.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ikeda_masashi.dart';
import 'package:kobastagram/post/yuji_friends/post_item_okuyama_taiki.dart';
import 'package:kobastagram/post_item.dart';

class PostsMayuFriends extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<PostsMayuFriends> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0x33330000)))),
            child: Column(
              children: [
                PostItemYamadaTanaka(),
              ],
            )));
  }
}
