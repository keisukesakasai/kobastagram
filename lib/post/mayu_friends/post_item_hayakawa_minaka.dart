import 'package:flutter/material.dart';

import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';

final String imagePath = 'images/mayu_friends/hayakawa_minaka_image.jpg';
final String iconPath = 'images/mayu_friends/hayakawa_minaka_icon.jpg';
final String name = '早川 美奈香';
final String living = '東京都大江戸';
final String account = '@MINAKA_HAYAKAWA';
final String message = '''.
愛するまゆち結婚おめでとう！！
思い出が有り余るほどあるので割愛します、
＠minakaaa見てください。
まゆちのはじける笑顔がずーっとだいすきです☺️💐
悠司くんと末永くお幸せに❤️\n''';
final String hashtag = '''
#10年目突入 #bp #dl
#界隈 
#ミーハー（27歳♀）
#基本2軒目はこの距離感
#大江戸温泉の代替案どうする？''';
final String chattime = '2日前';

final _dummyIcon = IconButton(
  icon: Icon(Icons.account_circle),
  iconSize: 40.0,
  onPressed: () => {},
);

final _sliderItem = Container(
  child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: 1000.0,
      )),
);

class PostItemHayakawaMinaka extends StatefulWidget {
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
          Container(
            width: 40.0,
            height: 40.0,
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(iconPath))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(name), Text(living)],
          ),
        ]),
        IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: () => {},
        )
      ]),
      Center(
          child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: 1000.0,
        height: 400,
      )),
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
        child: Text("小林 茉由さんが「Good！」しました。"),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Text(
              account,
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
            children: [Text(message)],
          )),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Text(
                hashtag,
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 55, 142),
                ),
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
              Container(
                width: 30.0,
                height: 30.0,
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/mayu_icon.png'))),
              ),
              Text(
                "コメントを追加...",
                style: TextStyle(color: Colors.grey),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('❤'),
                SizedBox(
                  width: 5,
                ), //間隔
                Text('👐'),
                SizedBox(
                  width: 5,
                ), //間隔
              ],
            ),
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
          child: Text(chattime)),
    ]);
  }
}
