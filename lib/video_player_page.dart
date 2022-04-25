import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPage extends StatefulWidget {
  final String moviePath;

  VideoPlayerPage({required this.moviePath});

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.moviePath);
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
    final double deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: deviceHeight * 0.9 ,
      width: deviceWidth,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: AppBar(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5) //角の丸み
                  ),
              title: const Text("Video Letter",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontStyle: FontStyle.normal,
                    shadows: <Shadow>[
                      Shadow(
                        color: Colors.grey,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 3.0,
                      ),
                    ],
                  )),
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
            )),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _controller
                          .seekTo(Duration.zero)
                          .then((_) => _controller.play());
                    },
                    icon: Icon(Icons.refresh, size: 30),
                  ),
                  IconButton(
                    onPressed: () {
                      _controller.play();
                    },
                    icon: Icon(Icons.play_arrow, size: 32.5,),
                  ),
                  IconButton(
                    onPressed: () {
                      _controller.pause();
                    },
                    icon: Icon(Icons.pause, size: 30),
                  ),
                ],
              ),
              VideoProgressIndicator(
                _controller,
                allowScrubbing: true,
              ),
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
