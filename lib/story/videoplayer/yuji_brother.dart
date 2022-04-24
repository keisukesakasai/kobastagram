import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoYujiBro extends StatefulWidget {
  VideoYujiBro(String path);

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoYujiBro> {
  late VideoPlayerController _controller;
  late final String path;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('videos/yuji_family/yuji_brother.MOV');
    _controller.initialize().then((_) {
      // 最初のフレームを描画するため初期化後に更新
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWedth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: deviceHeight,
        width: deviceWedth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
            VideoProgressIndicator(
              _controller,
              allowScrubbing: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    _controller
                        .seekTo(Duration.zero)
                        .then((_) => _controller.play());
                  },
                  icon: Icon(Icons.refresh),
                ),
                IconButton(
                  onPressed: () {
                    _controller.play();
                  },
                  icon: Icon(Icons.play_arrow),
                ),
                IconButton(
                  onPressed: () {
                    _controller.pause();
                  },
                  icon: Icon(Icons.pause),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
