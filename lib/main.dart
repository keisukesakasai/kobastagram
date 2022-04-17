import 'package:flutter/material.dart';
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
                preferredSize: Size.fromHeight(40),
                child: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.white,
                  title: Image.asset('images/kobasutagram.png', height: 60,),

                   actions: [
                    Icon(Icons.add_box_outlined,color:Colors.black),
                    SizedBox(width: 15,),
                    Icon(Icons.favorite_border_outlined,color:Colors.black),
                    SizedBox(width: 15,), //Iconの間隔
                    Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Transform.rotate( //Iconの角度変更
                    angle: -20,
                    child: Icon(Icons.send_outlined,color:Colors.black)
                    ),
                    ),
                    SizedBox(width: 15,),
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
                        Heros(),
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
                      child: Posts(),
                    )
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
                      child: Posts(),
                    )
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
                      top: BorderSide(width: 1, color: Color(0x33330000)))),
              height: 80,
              alignment: Alignment.topCenter,
              child: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.home, color: Colors.black, size: 30),
                  ),
                  Tab(
                    icon: Icon(Icons.search, color: Colors.black, size: 30),
                  ),
                  Tab(
                    icon: Icon(Icons.add_circle, color: Colors.black, size: 30),
                  ),
                  Tab(
                    icon: Icon(Icons.favorite, color: Colors.black, size: 30),
                  ),
                  Tab(
                    icon: Icon(Icons.person, color: Colors.black, size: 30),
                  ),
                ],
              ),
            )));
  }
}
