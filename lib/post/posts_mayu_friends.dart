import 'package:flutter/material.dart';
import 'package:kobastagram/post/mayu_friends/post_item_akimoto_asuka.dart';
import 'package:kobastagram/post/mayu_friends/post_item_daiichiseimei.dart';
import 'package:kobastagram/post/mayu_friends/post_item_endo_mari.dart';
import 'package:kobastagram/post/mayu_friends/post_item_goto_yuri.dart';
import 'package:kobastagram/post/mayu_friends/post_item_hayakawa_minaka.dart';
import 'package:kobastagram/post/mayu_friends/post_item_hirano_honami.dart';
import 'package:kobastagram/post/mayu_friends/post_item_hirose_rina.dart';
import 'package:kobastagram/post/mayu_friends/post_item_ogawa_mami.dart';
import 'package:kobastagram/post/mayu_friends/post_item_matsuyama.dart';
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
import 'package:kobastagram/post/mayu_friends/post_item_post_item_shitara_mizuho.dart';
import 'package:kobastagram/post/mayu_friends/post_item_goto_yuri.dart';
import 'package:kobastagram/post/mayu_friends/post_item_oda_juri.dart';
import 'package:kobastagram/post/mayu_friends/post_item_akimoto_asuka.dart';
import 'package:kobastagram/post/mayu_friends/post_item_shibata_saki.dart';
import 'package:kobastagram/post/mayu_friends/post_item_matsuyama.dart';


import 'package:kobastagram/post_item.dart';

import 'mayu_friends/post_item_monju_koharu.dart';

class PostsMayuFriends extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<PostsMayuFriends> {
  @override

  var descTextStyle = TextStyle(
    letterSpacing: 0.3,
    fontSize: 12,
  );

  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0x33330000)))),

             child: DefaultTextStyle.merge(
               style: descTextStyle,
            child: Column(
              children: [
                PostItemYamadaTanaka(),
                PostItemHayakawaMinaka(),
                PostItemDaiichiSeimei(),
                PostItemHiroseRina(),
                PostItemYukiMiyuAnna(),
                PostItemTakanoAoi(),
                PostItemUemuraNatsumi(),
                PostItemOgawaMiyako(),
                PostItemEndoMari(),
                PostItemOgawaMami(),
                PostItemYusukeYoshiki(),
                PostItemHiranoHonami(),
                PostItemTamagawaRisako(),
                PostItemUenoyaSayaka(),
                PostItemNishikawa(),
                PostItemShitara(),
                PostItemGotoYuri(),
                PostItemOdaJuri(),
                PostItemAkimotoAsuka(),
                PostItemShibataSaki(),
                PostItemMatsuyama(),
                PostItemMonjuKoharu(),
                PostItemKobayashiShimizuNakamura(),
              ],
             )

            )));
  }
}
