import 'package:flutter/material.dart';

import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';

final String LeftImagePath = 'images/profile/yuji_profile_company.jpg';
final String RightImagePath = 'images/profile/yuji_profile_company.jpg';
final String iconPath = 'images/profile/yuji_introduce_profile_icon.png';
final String general = '社会人';
final String school = 'NTTデータ';
final String message1 =  '2ヶ月の研修を経て社会保障事業部に配属される';
final String message2 =  '一緒に配属された同期と、';
final String message3=  'よく不仲になる？';
final String hashtag = '#同期と不仲説流したがる\n#本当は仲良し\n'
'#昼飯一緒に食べてる(はず)\n'
'#写真は不仲の同期との写真ではなく研修時代の同じクラスの写真です\n';

class PostItemYujiCom extends StatefulWidget {
  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State {

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  Container(
                    height: 280,
                    width: 170,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ), //間隔
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                  LeftImagePath),
                            ),

                            Row(
                              children: [
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,//写真の横にusernameを配置
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          general,
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
                            Text('📍$school'),
                          ],
                        ), //Row2
                        Column(
                          //Icon行
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 1),
                                child: Column(
                                  children: [
                                    Text(
                                      message1,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      message2,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      message3,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(hashtag,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color:
                                        Color.fromARGB(255, 1, 55, 142),
                                      ),
                                    ),
                                  ],
                                )),
                               Container(
                                 child: Column(
                                   children: [

                                   ],
                                 ),
                               ),
                          ],
                        ), //Row3
                      ],
                    ),
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
                                      radius: 8,
                                      backgroundImage: AssetImage(
                                          iconPath), //Story投稿画像
                                    ),
                                    Text(
                                      'blaugrana.reysol',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Icon(Icons.more_horiz, size: 12),
                              ],
                            ),
                            Center(
                                child: Image.asset(
                                  RightImagePath,
                                  fit: BoxFit.cover,
                                  height: 200,
                                  width: 165.0,
                                )),
                            Container(
                              child: Row(
                                //mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Icon(Icons.favorite_outline_outlined,
                                        size: 12),
                                    Icon(Icons.mode_comment_outlined,
                                        size: 12),
                                    Icon(Icons.send_outlined, size: 12),
                                    SizedBox(
                                      width: 95,
                                    )
                                  ]),
                                  Icon(
                                    Icons.home,
                                    size: 12,
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
        ));


  }
}
