import 'package:flutter/material.dart';
import 'package:kobastagram/posts.dart';
import 'package:kobastagram/stories.dart';
// import 'package:kobastagram/next_page.dart';

void main() => runApp(MyApp());

final _iconSize = 30.0;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kobastagram',
      home: MyHomePage(key: null, title: 'Kobastagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

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
                  backgroundColor: Colors.black,
                  title: Text(
                    widget.title,
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: IconButton(
                    icon: Icon(Icons.camera_alt),
                    iconSize: _iconSize,
                    onPressed: () => {},
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.live_tv),
                      iconSize: _iconSize,
                      onPressed: () => {},
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      iconSize: _iconSize,
                      onPressed: () => {},
                    ),
                  ],
                )),
            body: TabBarView(children: [
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Stories(),
                    ),
                    Center(
                      child: Posts(),
                    ),
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
              Center(),
              Center(),
              Center(),
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
