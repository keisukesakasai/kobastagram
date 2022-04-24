import 'package:flutter/material.dart';

import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';

final String LeftImagePath = 'images/yuji_profile_high_icon.jpg';
final String RightImagePath = 'images/yuji_profile_high.jpg';
final String iconPath = 'images/yuji_introduce_profile_icon.png';
final String general = '高校時代';
final String school = '千葉県立柏高校';
final String message1 =  'サッカー部でエースの存在';
final String message2 =  '勉強も部活も文武両道で優等生';
final String message3=  '早弁して昼休みは\n''格闘フットサル';
final String hashtag = '#クラスのムードメーカー\n'
    '#少しいじられキャラ\n'
    '#愛されキャラ';

class PostItemYujiHigh extends StatefulWidget {
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
                    height: 250,
                    width: 170,
                    child: Flexible(
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
