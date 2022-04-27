import 'package:flutter/material.dart';
import 'package:kobastagram/post/mayu_friends/post_item_akimoto_asuka.dart';
import 'package:kobastagram/post/mayu_friends/post_item_daiichiseimei.dart';
import 'package:kobastagram/post/mayu_friends/post_item_endo_mari.dart';
import 'package:kobastagram/post/mayu_friends/post_item_hayakawa_minaka.dart';
import 'package:kobastagram/post/mayu_friends/post_item_hirano_honami.dart';
import 'package:kobastagram/post/mayu_friends/post_item_hirose_rina.dart';
import 'package:kobastagram/post/mayu_friends/post_item_matsuyama.dart';
import 'package:kobastagram/post/mayu_friends/post_item_oda_juri.dart';
import 'package:kobastagram/post/mayu_friends/post_item_ogawa_mami.dart';
import 'package:kobastagram/post/mayu_friends/post_item_ogawa_miyako.dart';
import 'package:kobastagram/post/mayu_friends/post_item_post_item_kobayashi_shimizu_nakamura.dart';
import 'package:kobastagram/post/mayu_friends/post_item_post_item_yamada_nishikawa_yamashita.dart';
import 'package:kobastagram/post/mayu_friends/post_item_takano_aoi.dart';
import 'package:kobastagram/post/mayu_friends/post_item_tamagawa_risako.dart';
import 'package:kobastagram/post/mayu_friends/post_item_uenoya_sayaka.dart';
import 'package:kobastagram/post/mayu_friends/post_item_umemura_natsumi.dart';
import 'package:kobastagram/post/mayu_friends/post_item_yamada_tanaka.dart';
import 'package:kobastagram/post/mayu_friends/post_item_yukimiyuannna.dart';
import 'package:kobastagram/post/mayu_friends/post_item_yusuke_yoshiki.dart';
import 'package:kobastagram/post/mayu_friends/post_item_post_item_kobayashi_shimizu_nakamura.dart';
import 'package:kobastagram/post/mayu_friends/post_item_post_item_yamada_nishikawa_yamashita.dart';
import 'package:kobastagram/post/mayu_friends/post_item_post_item_shitara_mizuho.dart';
import 'package:kobastagram/post/mayu_friends/post_item_goto_yuri.dart';
import 'package:kobastagram/post/mayu_friends/post_item_oda_juri.dart';
import 'package:kobastagram/post/mayu_friends/post_item_akimoto_asuka.dart';
import 'package:kobastagram/post/mayu_friends/post_item_shibata_saki.dart';

import 'package:kobastagram/post/yuji_friends/post_item_abe_shunya.dart';
import 'package:kobastagram/post/yuji_friends/post_item_aida_takuya.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hoshino_reo.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ikeda_masashi.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ito_kuwahara_souhei.dart';
import 'package:kobastagram/post/yuji_friends/post_item_okuyama_taiki.dart';
import 'package:kobastagram/post/yuji_friends/post_item_saito_masahiro.dart';
import 'package:kobastagram/post/yuji_friends/post_item_sakasai_keisuke.dart';
import 'package:kobastagram/post/yuji_friends/post_item_soccer_mane.dart';
import 'package:kobastagram/post/yuji_friends/post_item_tateyama_kazuki.dart';
import 'package:kobastagram/post/yuji_friends/post_item_iizuka_yusuke.dart';
import 'package:kobastagram/post/yuji_friends/post_item_yamada_masahi.dart';
import 'package:kobastagram/post/yuji_friends/post_item_yoshida_rio.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hachisuka_gen.dart';
import 'package:kobastagram/post/yuji_friends/post_item_kametaki_maiko.dart';
import 'package:kobastagram/post/yuji_friends/post_item_kasahara_koutarou.dart';
import 'package:kobastagram/post/yuji_friends/post_item_sugita_daisuke.dart';
import 'package:kobastagram/post/yuji_friends/post_item_yamamoto_takeru.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ooyama_tubasa.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ono_masahiro.dart';
import 'package:kobastagram/post/yuji_friends/post_item_yamada_masahi.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ito_kousuke.dart';
import 'package:kobastagram/post/yuji_friends/post_item_soccer_mane.dart';
import 'package:kobastagram/post/yuji_friends/post_item_mai.dart';
import 'package:kobastagram/post/yuji_friends/post_item_asaba_syunya.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ikeda_ken.dart';
import 'package:kobastagram/post_secret_gesture_detector.dart';
import 'package:kobastagram/secret_file.dart';

import 'package:path/path.dart';
import 'package:device_preview/device_preview.dart';

import 'package:kobastagram/heros.dart';
import 'package:kobastagram/stories.dart';

import 'package:kobastagram/post/posts_yuji_friends.dart';
import 'package:kobastagram/post/posts_mayu_friends.dart';
import 'package:kobastagram/post/posts_yuji_profile.dart';
import 'package:kobastagram/post/posts_mayu_profile.dart';

import 'post_gesture_detector.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

final _iconSize = 30.0;
final _tabiconSize = 40.0;

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
      theme: ThemeData(
          primaryColor: Colors.white,
          textTheme: GoogleFonts.mPlusRounded1cTextTheme(
            Theme.of(context).textTheme,
          )),
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
                elevation: 0.0,
                title: Row(
                  children: [
                    Image.asset(
                      'images/kobasutagram.png',
                      height: 28,
                    ),
                  ],
                ),
                actions: [
                  Icon(Icons.add_box_outlined, color: Colors.black),
                  SizedBox(
                    width: 12.5,
                  ),
                  PostsSecretsGestureDetector(
                    imagePath: '',
                    func: PostsSecretFile(),
                  ),
                  //Iconの間隔
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.5),
                    child: Transform.rotate(
                        //Iconの角度変更
                        angle: 5.5,
                        child: Icon(Icons.send_outlined, color: Colors.black)),
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
                      mainAxisSpacing: 1.0,
                      crossAxisSpacing: 1.0,
                      childAspectRatio: 1.0,
                    ),
                    children: [
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/yamada_tanaka_image.jpg',
                        func: PostItemYamadaTanaka(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/sugita_daisuke_image.jpg',
                        func: PostItemSugitaDaisuke(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/tamagawa_risako_image.jpg',
                        func: PostItemTamagawaRisako(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/yuji_friends/soccer_mane_image.jpg',
                        func: PostItemSoccerMane(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/tateyama_kazuki_grid1.jpg',
                        func: PostItemTateyamaKazuki(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/hayakawa_minaka_image.jpg',
                        func: PostItemHayakawaMinaka(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/saito_masahiro_image.png',
                        func: PostItemSaitoMasahiro(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/tateyama_kazuki_grid2.jpg',
                        func: PostItemTateyamaKazuki(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/yuji_friends/aida_takuya_image.jpg',
                        func: PostItemAidaTakuya(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/mayu_friends/takano_aoi_image.jpg',
                        func: PostItemTakanoAoi(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/kametaki_maiko_image.jpg',
                        func: PostItemKametakiMaiko(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/mayu_friends/yukimiyuanna_image.jpg',
                        func: PostItemYukiMiyuAnna(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/yamamoto_takeru_image.jpg',
                        func: PostItemYamamotoTakeru(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/iizuka_yusuke_grid1.jpg',
                        func: PostItemIizukaYusuke(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/iizuka_yusuke_grid2.jpg',
                        func: PostItemIizukaYusuke(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/ooyama_tsubasa_image.jpg',
                        func: PostItemOoyamaTsubasa(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/uenoya_sayaka_image.jpg',
                        func: PostItemUenoyaSayaka(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/yuji_friends/ono_masahiro_image.jpg',
                        func: PostItemOnoMasahiro(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/kobayashi_shimizu_nakamura_grid1.jpg',
                        func: PostItemKobayashiShimizuNakamura(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/kobayashi_shimizu_nakamura_grid2.jpg',
                        func: PostItemKobayashiShimizuNakamura(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/kobayashi_shimizu_nakamura_grid3.jpg',
                        func: PostItemKobayashiShimizuNakamura(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/yuji_friends/ito_kosuke_image.jpg',
                        func: PostItemItouKousuke(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/daiichiseimei_image.jpg',
                        func: PostItemDaiichiSeimei(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/kuwahara_souhei_image.jpg',
                        func: PostItemKuwaharaSouhei(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/yuji_friends/mai_image.jpg',
                        func: PostItemMai(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/yuji_friends/ikeda_ken_image.jpg',
                        func: PostItemIkedaKen(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/yamada_masahi_image.jpg',
                        func: PostItemYamadaMasahi(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/mayu_friends/hirose_rina_image.jpg',
                        func: PostItemHiroseRina(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/umemura_natsumi_image.jpg',
                        func: PostItemUemuraNatsumi(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/mayu_friends/oda_juri_image.jpg',
                        func: PostItemOdaJuri(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/yuji_friends/yoshida_rio_grid1.jpg',
                        func: PostItemYoshidaRio(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/yuji_friends/abe_shunya_image.jpg',
                        func: PostItemAbeShunya(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/mayu_friends/ogawa_miyako_image.jpg',
                        func: PostItemOgawaMiyako(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/yuji_friends/yoshida_rio_grid2.jpg',
                        func: PostItemYoshidaRio(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/mayu_friends/endo_mari_image.jpg',
                        func: PostItemEndoMari(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/ikeda_masashi_image.jpg',
                        func: PostItemIkedaMasashi(),
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
                        imagePath: 'images/yuji_friends/hoshino_reo_image.jpg',
                        func: PostItemHoshinoReo(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/yuji_friends/asaba_shunya_image.jpg',
                        func: PostItemAsabaSyunya(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/hachisuka_gen_image.jpg',
                        func: PostItemHachisukaGen(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/yamada_nishikawa_yamashita_grid1.jpg',
                        func: PostItemNishikawa(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/yamada_nishikawa_yamashita_grid2.jpg',
                        func: PostItemNishikawa(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/shitara_mizuho_image.jpg',
                        func: PostItemShitara(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/mayu_friends/goto_yuri_image.jpg',
                        func: PostItemGotoYuri(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/kasahara_koutarou_image.jpg',
                        func: PostItemKasaharaKoutarou(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/okuyama_taiki_image.jpg',
                        func: PostItemOkuyamaTaiki(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/mayu_friends/shibata_saki_image.jpg',
                        func: PostItemShibataSaki(),
                      ),
                      PostsGestureDetector(
                        imagePath: 'images/mayu_friends/matsuyama_image.jpg',
                        func: PostItemMatsuyama(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/yuji_friends/sakasai_keisuke_image.jpg',
                        func: PostItemSakasaiKeisuke(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/asuka_akimoto_grid1.jpg',
                        func: PostItemAkimotoAsuka(),
                      ),
                      PostsGestureDetector(
                        imagePath:
                            'images/mayu_friends/asuka_akimoto_grid2.jpg',
                        func: PostItemAkimotoAsuka(),
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
                    // Heros(),
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
                  Center(
                      child: Column(children: [
                    PostMayuProfile(),
                    // Heros(),
                  ]))
                ],
              ),
            ),
          ]),
          bottomNavigationBar: BottomAppBar(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              width: 1.5, color: Color(0x33330000)))),
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
                      Container(
                        width: _tabiconSize + 5,
                        height: _tabiconSize + 5,
                        margin: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('images/tab_yuji_friend1.png'))),
                      ),
                      Container(
                        width: _tabiconSize,
                        height: _tabiconSize,
                        margin: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('images/tab_mayu_friend1.png'))),
                      ),
                      Tab(
                        icon: Icon(Icons.window, color: Colors.black, size: 30),
                      ),
                      Container(
                        width: _tabiconSize + 5,
                        height: _tabiconSize + 5,
                        margin: const EdgeInsets.all(1.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('images/yuji_tab_icon.png'))),
                      ),
                      Container(
                        width: _tabiconSize + 5,
                        height: _tabiconSize + 5,
                        margin: const EdgeInsets.all(1.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('images/mayu_tab_icon.jpg'))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  // padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "©︎ copyright KenKasi's",
                    style: GoogleFonts.sawarabiMincho(
                      height: 0.80,
                      //SETTING THIS CAN SOLVE YOUR PROBLEM
                      color: Colors.black54,
                      fontSize: 10.5,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 3.8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.only(bottom: 1.6),
                )
              ],
            ),
          )),
    );
  }
}
