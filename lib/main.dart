import 'package:flutter/material.dart';
import 'package:kobastagram/post/mayu_friends/post_item_daiichiseimei.dart';
import 'package:kobastagram/post/mayu_friends/post_item_endo_mari.dart';
import 'package:kobastagram/post/mayu_friends/post_item_hayakawa_minaka.dart';
import 'package:kobastagram/post/mayu_friends/post_item_hirano_honami.dart';
import 'package:kobastagram/post/mayu_friends/post_item_hirose_rina.dart';
import 'package:kobastagram/post/mayu_friends/post_item_ogawa_mami.dart';
import 'package:kobastagram/post/mayu_friends/post_item_ogawa_miyako.dart';
import 'package:kobastagram/post/mayu_friends/post_item_takano_aoi.dart';
import 'package:kobastagram/post/mayu_friends/post_item_tamagawa_risako.dart';
import 'package:kobastagram/post/mayu_friends/post_item_uenoya_sayaka.dart';
import 'package:kobastagram/post/mayu_friends/post_item_umemura_natsumi.dart';
import 'package:kobastagram/post/mayu_friends/post_item_yamada_tanaka.dart';
import 'package:kobastagram/post/mayu_friends/post_item_yukimiyuannna.dart';
import 'package:kobastagram/post/mayu_friends/post_item_yusuke_yoshiki.dart';
import 'package:kobastagram/post/yuji_friends/post_item_abe_shunya.dart';
import 'package:kobastagram/post/yuji_friends/post_item_aida_takuya.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hoshino_reo.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ikeda_masashi.dart';
import 'package:kobastagram/post/yuji_friends/post_item_okuyama_taiki.dart';
import 'package:kobastagram/post/yuji_friends/post_item_saito_masahiro.dart';
import 'package:kobastagram/post/yuji_friends/post_item_tateyama_kazuki.dart';
import 'package:kobastagram/post/yuji_friends/post_item_iizuka_yusuke.dart';
import 'package:kobastagram/post/yuji_friends/post_item_yoshida_rio.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hachisuka_gen.dart';
import 'package:kobastagram/post/yuji_friends/post_item_kametaki_maiko.dart';

import 'package:path/path.dart';
import 'package:device_preview/device_preview.dart';

import 'package:kobastagram/heros.dart';
import 'package:kobastagram/stories.dart';

import 'package:kobastagram/post/posts_yuji_friends.dart';
import 'package:kobastagram/post/posts_mayu_friends.dart';
import 'package:kobastagram/post/posts_yuji_profile.dart';

import 'post_gesture_detector.dart';

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
                preferredSize: Size.fromHeight(30),
                child: AppBar(
                  backgroundColor: Colors.white,
                  title: Row(
                    children: [
                      Image.asset(
                        'images/kobasutagram.png',
                        height: 28.5,
                      ),
                    ],
                  ),
                  actions: [
                    Icon(Icons.add_box_outlined, color: Colors.black),
                    SizedBox(
                      width: 12.5,
                    ),
                    Icon(Icons.favorite_border_outlined, color: Colors.black),
                    SizedBox(
                      width: 12.5,
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
                    Padding(padding: EdgeInsets.all(0), child: Stories()),
                    //Padding(
                    //  padding: EdgeInsets.all(0),
                    //  child: GestureDetector(
                    //      onTap: () {
                    //        Navigator.push(
                    //          context,
                    //         MaterialPageRoute(
                    //            builder: (context) => VideoPlayerPage(),
                    //          ),
                    //        );
                    //      },
                    //      child: Stories()),
                    //),
                    Center(
                        child: Column(
                      children: <Widget>[
                        PostsYujiFriends(),
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
                      physics: ScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 3.0,
                        crossAxisSpacing: 3.0,
                        childAspectRatio: 1.0,
                      ),
                      children: [
                        PostsGestureDetector(
                          imagePath:
                              'images/yuji_friends/okuyama_taiki_image.jpg',
                          func: PostItemOkuyamaTaiki(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/mayu_friends/yamada_tanaka_image.jpg',
                          func: PostItemYamadaTanaka(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/yuji_friends/ikeda_masashi_image.jpg',
                          func: PostItemIkedaMasashi(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/yuji_friends/hoshino_reo_image.jpg',
                          func: PostItemHoshinoReo(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/yuji_friends/tateyama_kazuki_image.jpg',
                          func: PostItemTateyamaKazuki(),
                        ),
                        PostsGestureDetector(
                          imagePath: 'images/yuji_friends/abe_shunya_image.jpg',
                          func: PostItemAbeShunya(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/yuji_friends/aida_takuya_image.jpg',
                          func: PostItemAidaTakuya(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                          'images/yuji_friends/saito_masahiro_image.png',
                          func: PostItemSaitoMasahiro(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                          'images/yuji_friends/iizuka_yusuke_image.jpg',
                          func: PostItemIizukaYusuke(),
                        ),
                          PostsGestureDetector(
                            imagePath:
                            'images/yuji_friends/hachisuka_gen_image.jpg',
                            func: PostItemHachisukaGen(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                          'images/yuji_friends/kametaki_maiko_image.jpg',
                          func: PostItemKametakiMaiko(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/yuji_friends/yoshida_rio_image.jpg',
                          func: PostItemYoshidaRio(),
                        ),

                        PostsGestureDetector(
                          imagePath:
                              'images/mayu_friends/hayakawa_minaka_image.jpg',
                          func: PostItemHayakawaMinaka(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/mayu_friends/daiichiseimei_image.jpg',
                          func: PostItemDaiichiSeimei(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/mayu_friends/hirose_rina_image.jpg',
                          func: PostItemHiroseRina(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/mayu_friends/yukimiyuanna_image.jpg',
                          func: PostItemYukiMiyuAnna(),
                        ),
                        PostsGestureDetector(
                          imagePath: 'images/mayu_friends/takano_aoi_image.jpg',
                          func: PostItemTakanoAoi(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/mayu_friends/umemura_natsumi_image.jpg',
                          func: PostItemUemuraNatsumi(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/mayu_friends/ogawa_miyako_image.jpg',
                          func: PostItemOgawaMiyako(),
                        ),
                        PostsGestureDetector(
                          imagePath: 'images/mayu_friends/endo_mari_image.jpg',
                          func: PostItemEndoMari(),
                        ),
                        PostsGestureDetector(
                          imagePath: 'images/mayu_friends/ogawa_mami_image.jpg',
                          func: PostItemOgawaMami(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/mayu_friends/yusuke_yoshiki_image.jpg',
                          func: PostItemYusukeYoshiki(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/mayu_friends/hirano_honami_image.jpg',
                          func: PostItemHiranoHonami(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/mayu_friends/tamagawa_risako_image.jpg',
                          func: PostItemTamagawaRisako(),
                        ),
                        PostsGestureDetector(
                          imagePath:
                              'images/mayu_friends/uenoya_sayaka_image.jpg',
                          func: PostItemUenoyaSayaka(),
                        ),

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
                    Center(
                        child: Column(children: [
                          PostYujiProfile(),
                        ]))
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
