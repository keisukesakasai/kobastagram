import 'package:flutter/material.dart';
import 'package:kobastagram/post/mayu_profile/post_item_mayu_elementary.dart';
import 'package:kobastagram/post/mayu_profile/post_item_mayu_junior.dart';
import 'package:kobastagram/post/mayu_profile/post_item_mayu_high.dart';
import 'package:kobastagram/post/mayu_profile/post_item_mayu_college.dart';
import 'package:kobastagram/post/mayu_profile/post_item_mayu_company.dart';
import 'package:kobastagram/post/mayu_profile/post_item_mayu_elementary.dart';

final String iconPath = 'images/profile/mayu_introduce_profile_icon.png';
final String friendsPath = 'images/profile/mayu_profile_friends.png';

final String profileMsg = '埼玉県浦和市出身\n''明るく人周囲の人を幸せに\n''何事にもポジティブ\n''勉強もスポーツもすべてこなす十全十美';

class PostMayuProfile extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}


class _PostsState extends State<PostMayuProfile> {
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
                                        'images/profile/mayu_profile_icon.png'),
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

                                '笑顔',

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

                              '美貌',

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
                                '200',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(

                                'IQ',

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
                        'Mayu Kobayashi',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '才色兼備',
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
                    'natsumiiin_, minakaaa, 他',
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
        PostItemMayuEle(),
        PostItemMayuJunior(),
        PostItemMayuHigh(),
        PostItemMayuCol(),
        PostItemMayuCom(),
      ],
    ));
  }
}
