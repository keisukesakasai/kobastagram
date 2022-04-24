import 'package:flutter/material.dart';
import 'package:kobastagram/post/yuji_friends/post_item_abe_shunya.dart';
import 'package:kobastagram/post/yuji_friends/post_item_aida_takuya.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hoshino_reo.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ikeda_masashi.dart';
import 'package:kobastagram/post/yuji_friends/post_item_okuyama_taiki.dart';
import 'package:kobastagram/post/yuji_friends/post_item_saito_masahiro.dart';
import 'package:kobastagram/post/yuji_friends/post_item_tateyama_kazuki.dart';
import 'package:kobastagram/post/yuji_friends/post_item_iizuka_yusuke.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hachisuka_gen.dart';
import 'package:kobastagram/post/yuji_friends/post_item_kametaki_maiko.dart';
import 'package:kobastagram/post/yuji_friends/post_item_yoshida_rio.dart';

class PostsYujiFriends extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<PostsYujiFriends> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0x33330000)))),
            child: Column(
              children: [
                PostItemIkedaMasashi(),
                PostItemOkuyamaTaiki(),
                PostItemHoshinoReo(),
                PostItemAbeShunya(),
                PostItemAidaTakuya(),
                PostItemTateyamaKazuki(),
                PostItemSaitoMasahiro(),
                PostItemIizukaYusuke(),
                PostItemHachisukaGen(),
                PostItemKametakiMaiko(),
                PostItemYoshidaRio(),

              ],
            )));
  }
}
