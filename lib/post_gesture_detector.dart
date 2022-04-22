import 'package:flutter/material.dart';
import 'package:kobastagram/post_item_detail.dart';

class PostsGestureDetector extends StatelessWidget {
  @override
  final String imagePath;
  // final StatelessWidget func;
  final  PostItemDetail func;

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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => func,
            ),
          );
        });
  }
}
