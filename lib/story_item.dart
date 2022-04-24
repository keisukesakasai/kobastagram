import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kobastagram/video_player_page.dart';

final _iconSize = 60.0;

class StoryItem extends StatelessWidget {
  final String name;
  final String imagePath;
  final String moviePath;

  StoryItem(
      {Key? key,
      required this.name,
      required this.imagePath,
      required this.moviePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 6,
              ),
              width: _iconSize,
              height: _iconSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 0),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        children: [
                          Container(
                            child: VideoPlayerPage(
                              moviePath: moviePath,
                            ),
                          ),
                        ]);
                  });
            }),
        Container(
            padding: EdgeInsets.symmetric(vertical: 0),
            child: Text(name,
                style: GoogleFonts.manrope(
                  textStyle: Theme.of(context).textTheme.headline4,
                  color: Colors.black,
                  fontSize: 11.5,
                )))
      ],
    );
  }
}
