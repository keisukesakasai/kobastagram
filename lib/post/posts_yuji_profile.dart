import 'package:flutter/material.dart';
import 'package:kobastagram/post/mayu_friends/post_item_yamada_tanaka.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hoshino_reo.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ikeda_masashi.dart';
import 'package:kobastagram/post/yuji_friends/post_item_okuyama_taiki.dart';
import 'package:kobastagram/post_item.dart';

class PostYujiProfile extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<PostYujiProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, right: 1, left: 1),
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    radius: 45,
                                    backgroundImage: AssetImage(
                                        'images/yuji_profile_icon.png'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ), //profile行
                    ],
                  ),
                  Expanded(
                    child: Container(
                        child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                '15',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '投稿',
                                style: TextStyle(
                                  fontSize: 13,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              '15',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'フォロワー',
                              style: TextStyle(
                                fontSize: 13,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                '15',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'フォロー中',
                                style: TextStyle(
                                  fontSize: 13,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yuji kobayashi',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'テクニシャン',
                        style: TextStyle(
                          color: Color(0xE85D5F5D),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text('千葉県柏市出身'),
                      Text('趣味はサッカー観戦、ゴルフ'),
                      Text('素敵な奥さんと出会い'),
                      Text('人生勝ち組'),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'images/yuji_profile_friends.png',
                  fit: BoxFit.cover,
                  width: 100.0,
                ),
                Text(
                  'フォロワー:',
                  style: TextStyle(fontSize: 13),
                ),
                Flexible(
                  child: Text(
                    'saka_kei, kennn405, ekedadadadada, 他',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ), //friends
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0x33330000),
                      width: 0.5,
                    ),
                  ),
                  child: Text(
                    'フォロー中 ↓',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xF75FB338),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0x33330000),
                      width: 0.5,
                    ),
                  ),
                  child: Text(
                    'メッセージ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0x33330000),
                      width: 0.5,
                    ),
                  ),
                  child: Icon(Icons.switch_account_outlined, size: 19),
                ),
                SizedBox(
                  width: 5,
                )
              ],
            ),
          ],
        )),
        Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0x33330000)))),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 1, left: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ), //間隔
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                    'images/yuji_profile_icon.png'), //Story投稿画像
                              ),

                              Row(
                                children: [
                                  Column(
                                    // crossAxisAlignment: CrossAxisAlignment.start,//写真の横にusernameを配置
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            '中学時代',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 1, 55, 142),
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ), //profile行

                          Row(
                            //Icon行
                            children: [
                              SizedBox(width: 5),
                              Text('📍柏市立光中学校'),
                            ],
                          ), //Row2
                          Column(
                            //Icon行
                            children: [
                              Container(
                                  padding: EdgeInsets.symmetric(horizontal: 1),
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    children: [
                                      Text(
                                        '長距離も短距離も早く',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        '黄色い声援を浴びていた',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        '勉強もでき、学級で常に上位の成績',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                  padding: EdgeInsets.symmetric(horizontal: 1),
                                  //alignment: Alignment.centerLeft,
                                  child: Column(
                                    children: [
                                      Text(
                                        '#当時から優男',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromARGB(255, 1, 55, 142),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ), //Row3
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 10,
                                          backgroundImage: AssetImage(
                                              'images/yuji_profile_icon.png'), //Story投稿画像
                                        ),
                                        Text(
                                          'blaugrana.reysol',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.more_horiz, size: 15),
                                  ],
                                ),
                                Center(
                                    child: Image.asset(
                                  'images/yuji_profile_junior.jpg',
                                  fit: BoxFit.cover,
                                  height: 200,
                                  width: 150.0,
                                )),
                                Container(
                                  child: Row(
                                    //mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(children: [
                                        Icon(Icons.favorite_outline_outlined,
                                            size: 15),
                                        Icon(Icons.mode_comment_outlined,
                                            size: 15),
                                        Icon(Icons.send_outlined, size: 15),
                                        SizedBox(
                                          width: 75,
                                        )
                                      ]),
                                      Icon(
                                        Icons.home,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0x33330000)))),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
                ),
              ],
            )),
        Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0x33330000)))),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 1, left: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ), //間隔
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                    'images/yuji_profile_high_icon.jpg'), //Story投稿画像
                              ),

                              Row(
                                children: [
                                  Column(
                                    // crossAxisAlignment: CrossAxisAlignment.start,//写真の横にusernameを配置
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            '中学時代',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 1, 55, 142),
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ), //profile行

                          Row(
                            //Icon行
                            children: [
                              SizedBox(width: 5),
                              Text('千葉県立柏高校'),
                            ],
                          ), //Row2
                          Column(
                            //Icon行
                            children: [
                              Container(
                                  padding: EdgeInsets.symmetric(horizontal: 1),
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    children: [
                                      Text(
                                        'サッカー部でエースの存在',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        '勉強も部活も文武両道で優等生',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        '早弁して昼休みは格闘フットサル',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                  padding: EdgeInsets.symmetric(horizontal: 1),
                                  //alignment: Alignment.centerLeft,
                                  child: Column(
                                    children: [
                                      Text(
                                        '#クラスのムードメーカ',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromARGB(255, 1, 55, 142),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ), //Row3
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 10,
                                          backgroundImage: AssetImage(
                                              'images/yuji_profile_icon.png'), //Story投稿画像
                                        ),
                                        Text(
                                          'blaugrana.reysol',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.more_horiz, size: 15),
                                  ],
                                ),
                                Center(
                                    child: Image.asset(
                                  'images/yuji_profile_high.jpg',
                                  fit: BoxFit.cover,
                                  height: 200,
                                  width: 150.0,
                                )),
                                Container(
                                  child: Row(
                                    //mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(children: [
                                        Icon(Icons.favorite_outline_outlined,
                                            size: 15),
                                        Icon(Icons.mode_comment_outlined,
                                            size: 15),
                                        Icon(Icons.send_outlined, size: 15),
                                        SizedBox(
                                          width: 75,
                                        )
                                      ]),
                                      Icon(
                                        Icons.home,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0x33330000)))),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
                ),
              ],
            )),
      ],
    ));
  }
}
