import 'package:flutter/material.dart';
import 'package:kobastagram/post/yuji_profile/post_item_yuji_junior.dart';
import 'package:kobastagram/post/yuji_profile/post_item_yuji_high.dart';
import 'package:kobastagram/post/yuji_profile/post_item_yuji_college.dart';
import 'package:kobastagram/post/yuji_profile/post_item_yuji_company.dart';

final String iconPath = 'images/profile/yuji_introduce_profile_icon.png';
final String friendsPath = 'images/profile/yuji_profile_friends.png';
final String profileMsg = '千葉県柏市出身\n''趣味はサッカー観戦、ゴルフ\n''素敵な奥さんと出会い\n''人生勝ち組';
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
                                        'images/profile/yuji_profile_icon.png'),
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
                                '100',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '優しさ',
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
                              '100',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '運動神経',
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
                                '100',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '適応性',
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
                      Text(profileMsg),
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
                  friendsPath,
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
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Color(0x33330000),
                      width: 0.5,
                    ),
                  ),
                  child: Text(
                    'フォロー中 ↓',
                    style: TextStyle(
                      fontSize: 13,
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
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Color(0x33330000),
                      width: 0.5,
                    ),
                  ),
                  child: Text(
                    'メッセージ',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
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
        PostItemYujiJunior(),
        PostItemYujiHigh(),
        PostItemYujiCol(),
        PostItemYujiCom(),
      ],
    ));
  }
}
