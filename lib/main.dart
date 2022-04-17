import 'package:flutter/material.dart';
import 'package:kobastagram/post/posts_mayu_friends.dart';
import 'package:kobastagram/posts.dart';
import 'package:kobastagram/heros.dart';
import 'package:kobastagram/stories.dart';

import 'package:kobastagram/post/posts_yuji_friends.dart';

void main() => runApp(MyApp());

final _iconSize = 30.0;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kobastagram',
      home: MyHomePage(title: 'Kobastagram'),
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
        length: 5,
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
                      child: Stories(),
                    ),
                    Center(
                        child: Column(
                      children: [
                        PostsYujiFriends(),
                        //Heros(),
                      ],
                    )),
                    // Center(
                    //     child: RaisedButton(
                    //         child: Image.asset(
                    //           'images/friends_yuji/okuyama_taiki.jpg',
                    //           fit: BoxFit.cover,
                    //           width: 1000.0,
                    //         ),
                    //         onPressed: () {
                    //           Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => NextPage()),
                    //           );
                    //         })
                    // )
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
                    Center()
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
                    Center(
                      child: Posts(),
                    )
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
                    Center(
                      child: Posts(),
                    )
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
