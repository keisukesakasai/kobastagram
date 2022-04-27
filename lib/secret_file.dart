import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kobastagram/post/mayu_friends/post_item_yamada_tanaka.dart';
import 'package:kobastagram/post/yuji_friends/post_item_abe_shunya.dart';
import 'package:kobastagram/post/yuji_friends/post_item_aida_takuya.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hoshino_reo.dart';
import 'package:kobastagram/post/yuji_friends/post_item_ikeda_masashi.dart';
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

class PostsSecretFile extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<PostsSecretFile> {
  @override
  var descTextStyle = TextStyle(
    letterSpacing: 0.3,
    fontSize: 13.5,
  );

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Powered by KenKasi's",
            style: GoogleFonts.sawarabiMincho(
              height: 2,
              //SETTING THIS CAN SOLVE YOUR PROBLEM
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w300,
              letterSpacing: 3.8,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 12.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, // 横方向は左に揃える
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black12,
                  border: Border.all(color: Colors.black54, width: 1),
                  image: DecorationImage(
                      image: AssetImage(
                          'images/yuji_friends/ikeda_ken_secret.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(child: Text('Ken IKEDA.')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, // 横方向は左に揃える
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black12,
                  border: Border.all(color: Colors.black54, width: 1),
                  image: DecorationImage(
                      image: AssetImage(
                          'images/yuji_friends/ikeda_masashi_secret.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(child: Text('Masashi IKEDA.')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, // 横方向は左に揃える
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black12,
                  border: Border.all(color: Colors.black54, width: 1),
                  image: DecorationImage(
                      image: AssetImage(
                          'images/yuji_friends/sakasai_keisuke_secret.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(child: Text('Keisuke SAKASAI.')),
            ],
          ),
        ],
      ),
    );
  }
}
