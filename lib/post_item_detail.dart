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
    return DefaultTabController(
        length: 1,
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(45),
                child: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.white,
                  title: Image.asset(
                    'images/kobasutagram.png',
                    height: 50,
                  ),
                  actions: [
                    Icon(Icons.add_box_outlined, color: Colors.black),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.favorite_border_outlined, color: Colors.black),
                    SizedBox(
                      width: 15,
                    ), //Iconの間隔
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.5),
                      child: Transform.rotate(
                        //Iconの角度変更
                          angle: 5.5,
                          child:
                          Icon(Icons.send_outlined, color: Colors.black)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )),
            body: TabBarView(children: [
              //--- １個目のタブ
              SingleChildScrollView(
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
              ),
            ])));
  }
}
