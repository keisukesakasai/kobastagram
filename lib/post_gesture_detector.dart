import 'package:flutter/material.dart';
import 'package:kobastagram/post/yuji_friends/post_item_hoshino_reo.dart';
import 'package:kobastagram/post_item_detail.dart';

class PostsGestureDetector extends StatelessWidget {
  @override
  final String imagePath;

  // final StatelessWidget func;
  // final PostItemDetail func;
  final StatefulWidget func;

  const PostsGestureDetector({
    Key? key,
    required this.imagePath,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
            )),
        onTap: () {
          showDialog(
              context: context,
              builder: (childContext) {
                return SimpleDialog(
                    insetPadding: EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 40,
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    children: [
                      Container(
                          child: func
                      ),
                    ]);
              });
        }
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => func,
      //     ),
      //   );
      // }
    );
  }
}
