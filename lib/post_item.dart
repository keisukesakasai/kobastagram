import 'package:flutter/material.dart';

import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';

final _dummyIcon = IconButton(
  icon: Icon(Icons.account_circle),
  iconSize: 40.0,
  onPressed: () => {},
);

final _sliderItem = Container(
  child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
      child: Image.asset(
        'images/okuyama_taiki.jpg',
        fit: BoxFit.cover,
        width: 1000.0,
      )),
);

class PostItem extends StatefulWidget {
  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State {
  int _current = 0;

  final _pictures = <Widget>[_sliderItem, _sliderItem, _sliderItem];

  // _PostItemState({Key key})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
        Row(children: [
          _dummyIcon,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("奥山 大樹"), Text("日本 埼玉県")],
          ),
        ]),
        IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: () => {},
        )
      ]),
    Center(
        child: Image.asset(
          'images/okuyama_taiki.jpg',
          fit: BoxFit.cover,
          width: 1000.0,
          height: 400,
        )
    ),
      // Center(
      //     child: CarouselSlider(
      //     options: CarouselOptions(
      //       height: 400,
      //       enableInfiniteScroll: false,
      //       viewportFraction: 1.0,
      //       onPageChanged: (index) {
      //         setState(() {
      //           _current = index;
      //         });
      //       },
      //       items: _pictures),
      // )),
      Row(
        children: [
          Container(
              margin: EdgeInsets.only(right: 44),
              child: Row(children: [
                IconButton(
                  icon: Icon(Icons.favorite),
                  iconSize: 30,
                  onPressed: () => {},
                ),
                IconButton(
                  icon: Icon(Icons.mode_comment),
                  iconSize: 30,
                  onPressed: () => {},
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  iconSize: 30,
                  onPressed: () => {},
                ),
              ])),
          Expanded(
              child: Row(
                  children: _pictures
                      .asMap()
                      .map((index, picture) {
                        return MapEntry(
                            index,
                            Container(
                              height: 8.0,
                              width: 8.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == index
                                      ? Color.fromRGBO(0, 0, 0, 0.9)
                                      : Color.fromRGBO(0, 0, 0, 0.4)),
                            ));
                      })
                      .values
                      .toList())),
          Container(
              padding: EdgeInsets.only(right: 4),
              child: Row(children: [
                Transform.rotate(
                  angle: 3 * pi / 2,
                  child: IconButton(
                    icon: Icon(Icons.label_important),
                    iconSize: 30,
                    onPressed: () => {},
                  ),
                )
              ])),
        ],
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        alignment: Alignment.centerLeft,
        child: Text("小林 悠司さんが「Good！」しました。"),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Text(
              'yachin17man',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Text('オレの誕生日の次の日の結婚式おめでとう！！\n'
                  '高3の口聞かなかった時期のことまだ根に持ってたけど、もう大人だから水に流すね！またまゆちゃんも一緒につぶれるまで飲み行こう🙆\n‍ゆうじとまゆに永遠の幸あれ　アメン🌝\n'),
            ],
          )),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Text(
                '#ゆうじ#いい匂い#ボディミスト#多め',
              ),
            ],
          )),
      // Container(
      //     padding: EdgeInsets.symmetric(horizontal: 12),
      //     alignment: Alignment.centerLeft,
      //     child: Text(
      //       "コメント1件を表示",
      //     )),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              IconButton(
                icon: Icon(Icons.account_circle),
                iconSize: 30,
                onPressed: () => {},
              ),
              Text("コメントを追加..."),
            ]),
            // Row(
            //   children: [
            //     IconButton(
            //       icon: Icon(Icons.favorite),
            //     ),
            //     IconButton(
            //       icon: Icon(Icons.ac_unit),
            //     ),
            //     IconButton(
            //       icon: Icon(Icons.add_circle),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0x33330000)))),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
          child: Text("12時間前")),
    ]);
  }
}
