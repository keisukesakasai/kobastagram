import 'package:flutter/material.dart';

import 'package:path/path.dart';
import 'package:kobastagram/VideoPlayerPage.dart';
import 'package:device_preview/device_preview.dart';

import 'package:kobastagram/posts.dart';
import 'package:kobastagram/heros.dart';
import 'package:kobastagram/stories.dart';

import 'package:kobastagram/post/posts_yuji_friends.dart';
import 'package:kobastagram/post/posts_mayu_friends.dart';

import 'detail/post_item_ikeda_masashi_detail.dart';
import 'detail/post_item_okuyama_taiki_detail.dart';
import 'detail/post_item_yamada_tanaka_detail.dart';
import 'detail/post_item_hoshino_reo_detail.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),
);
final _iconSize = 30.0;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kobastagram',
      home: MyHomePage(title: 'Kobastagram'),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new PostsYujiFriends(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(45),
                child: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.white,
                  title: Row(
                    children: [
                      Image.asset(
                        'images/kobasutagram.png',
                        height: 45,
                      ),
                    ],
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
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoPlayerPage(),
                              ),
                            );
                          },
                          child: Stories()),
                    ),
                    Center(
                        child: Column(
                      children: <Widget>[
                        PostsYujiFriends(),
                        //Heros(),
                      ],
                    )),
                  ],
                ),
              ),

              //--- ２個目のタブ
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Stories(),
                    ),
                    Center(
                        child: Column(children: [
                      PostsMayuFriends(),
                    ]))
                  ],
                ),
              ),

              //--- ３個目のタブ
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Stories(),
                    ),
                    Center(
                        child: GridView(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 2.0,
                        crossAxisSpacing: 2.0,
                        childAspectRatio: 1.0,
                      ),
                      children: [
                        //--- image1
                        GestureDetector(
                            child: Container(
                                width: 120,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'images/okuyama_taiki_image.jpg'),
                                      fit: BoxFit.cover),
                                )),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PostItemOkuyamaTaikiDetail(),
                                ),
                              );
                            }),

                        //--- image2
                        GestureDetector(
                            child: Container(
                                width: 120,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'images/yamada_tanaka_image.jpg'),
                                      fit: BoxFit.cover),
                                )),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PostItemYamadaTanakaDetail(),
                                ),
                              );
                            }),

                        //--- image3
                        GestureDetector(
                            child: Container(
                                width: 120,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'images/ikeda_masashi_image.jpg'),
                                      fit: BoxFit.cover),
                                )),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PostItemIkedaMasashiDetail(),
                                ),
                              );
                            }),

                        //--- image4
                        GestureDetector(
                            child: Container(
                                width: 120,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'images/hoshino_reo_image.jpg'),
                                      fit: BoxFit.cover),
                                )),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PostItemHoshinoReoDetail(),
                                ),
                              );
                            }),
                      ],
                    ))
                  ],
                ),
              ),

              //--- ４個目のタブ
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Stories(),
                    ),
                    Center(child: Text('⚠️ 工事中 ⚠️'))
                  ],
                ),
              ),

              //--- ５個目のタブ
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Stories(),
                    ),
                    Center(child: Text('⚠️ 工事中 ⚠️'))
                  ],
                ),
              ),
            ]),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 1.5, color: Color(0x33330000)))),
              height: 70,
              alignment: Alignment.topCenter,
              child: TabBar(
                indicator: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    width: 2.5,
                    color: Colors.black38,
                  )),
                ),
                tabs: <Widget>[
                  Tab(
                    icon:
                        Icon(Icons.people, color: Color(0xFF0B1EC9), size: 30),
                  ),
                  Tab(
                    icon:
                        Icon(Icons.people, color: Color(0xF3C10E0E), size: 30),
                  ),
                  Tab(
                    icon: Icon(Icons.window, color: Colors.black, size: 30),
                  ),
                  Container(
                    width: 34.5,
                    height: 34.5,
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/yuji_tab_icon.png'))),
                  ),
                  Container(
                    width: 34.5,
                    height: 34.5,
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/mayu_tab_icon.jpg'))),
                  ),
                ],
              ),
            )));
  }
}
