import 'package:flutter/material.dart';
import 'package:kobastagram/post/mayu_friends/post_item_yamada_tanaka.dart';
import 'package:kobastagram/post/yuji_friends/post_item_abe_shunya.dart';
import 'package:kobastagram/post/yuji_friends/post_item_aida_takuya.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hoshino_reo.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ikeda_masashi.dart';
import 'package:kobastagram/post/yuji_friends/post_item_inoue_takashi.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ito_kousuke.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ito_kuwahara_souhei.dart';
import 'package:kobastagram/post/yuji_friends/post_item_okuyama_taiki.dart';
import 'package:kobastagram/post/yuji_friends/post_item_saito_masahiro.dart';
import 'package:kobastagram/post/yuji_friends/post_item_sakasai_keisuke.dart';
import 'package:kobastagram/post/yuji_friends/post_item_tateyama_kazuki.dart';
import 'package:kobastagram/post/yuji_friends/post_item_iizuka_yusuke.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hachisuka_gen.dart';
import 'package:kobastagram/post/yuji_friends/post_item_kametaki_maiko.dart';
import 'package:kobastagram/post/yuji_friends/post_item_yamada_masahi.dart';
import 'package:kobastagram/post/yuji_friends/post_item_yoshida_rio.dart';
import 'package:kobastagram/post/yuji_friends/post_item_kasahara_koutarou.dart';
import 'package:kobastagram/post/yuji_friends/post_item_sugita_daisuke.dart';
import 'package:kobastagram/post/yuji_friends/post_item_yamamoto_takeru.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ooyama_tubasa.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ono_masahiro.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ito_kuwahara_souhei.dart';
import 'package:kobastagram/post/yuji_friends/post_item_soccer_mane.dart';
import 'package:kobastagram/post/yuji_friends/post_item_mai.dart';
import 'package:kobastagram/post/yuji_friends/post_item_asaba_syunya.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ikeda_ken.dart';



import 'package:kobastagram/post/yuji_friends/post_item_yamada_masahi.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ito_kousuke.dart';



class PostsYujiFriends extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<PostsYujiFriends> {
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
                PostItemInoueTakashi(),
                PostItemIizukaYusuke(),
                PostItemAidaTakuya(),
                PostItemSaitoMasahiro(),
                PostItemKametakiMaiko(),
                PostItemSugitaDaisuke(),
                PostItemOoyamaTsubasa(),
                PostItemIkedaMasashi(),
                PostItemOkuyamaTaiki(),
                PostItemHoshinoReo(),
                PostItemAbeShunya(),
                PostItemTateyamaKazuki(),
                PostItemHachisukaGen(),
                PostItemYoshidaRio(),
                PostItemKasaharaKoutarou(),
                PostItemYamamotoTakeru(),
                PostItemOnoMasahiro(),
                PostItemYamadaMasahi(),
                PostItemItouKousuke(),
                PostItemKuwaharaSouhei(),
                PostItemSoccerMane(),
                PostItemMai(),
                PostItemAsabaSyunya(),
                PostItemSakasaiKeisuke(),
                PostItemIkedaKen(),
              ],
            )

            )));
  }
}
