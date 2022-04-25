import 'package:flutter/material.dart';

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
    var descTextStyle = TextStyle(
      letterSpacing: 0.3,
      fontSize: 12,
    );
    return GestureDetector(
        child: Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black,
              // border: Border.all(color: Colors.grey, width: 0.1),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
            )),
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
                      ) ,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      children: [
                        DefaultTextStyle.merge(
                            style: descTextStyle, child: Container(child: func)),
                      ]),
                );
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
