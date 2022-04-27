import 'package:flutter/material.dart';

class PostsSecretsGestureDetector extends StatelessWidget {
  @override
  final String imagePath;

  // final StatelessWidget func;
  // final PostItemDetail func;
  final StatefulWidget func;

  const PostsSecretsGestureDetector({
    Key? key,
    required this.imagePath,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var descTextStyle = TextStyle(
      letterSpacing: 1.8,
      fontSize: 12,
    );
    return GestureDetector(
        child: Container(
          width: 28,
          height: 26,
          child: FittedBox(
            child: Icon(Icons.favorite_border_outlined, color: Colors.black38, size: 12,),
            fit: BoxFit.fill,
          ),
        ),
        onTap: () {
          showDialog(
              context: context,
              builder: (childContext) {
                return Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: SimpleDialog(
                      insetPadding: EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 40,
                      ),
                      backgroundColor: Colors.white.withOpacity(0.9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      children: [
                        DefaultTextStyle.merge(
                            style: descTextStyle,
                            child: Container(child: func)),
                      ]),
                );
              });
        });
  }
}
