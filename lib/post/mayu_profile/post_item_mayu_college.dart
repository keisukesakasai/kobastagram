import 'package:flutter/material.dart';

import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';


final String LeftImagePath = 'images/profile/mayu_profile_college_icon.png';
final String RightImagePath  = 'images/profile/mayu_college_image.jpg';
final String iconPath = 'images/profile/mayu_introduce_profile_icon.png';
final String general = '大学時代';
final String school = '早稲田大学';
final String message1 =  'BP32代の元気印！\n 合宿女サブリ！';
final String message2 =  '当時一大勢力の教育学部✏';
final String message3=  ' 先輩後輩みんなから\n     愛される存在❤\n''卓にはまゆちが必要！🍻';
final String hashtag = '#眠り姫まゆち\n';


class PostItemMayuCol extends StatefulWidget {
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
                  InteractiveViewer(
                    child: Container(
                      height: 250,
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
                              Text('     📍$school'),
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
                  InteractiveViewer(
                    child: Container(
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
                                        'm.mayuu',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 80,
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