import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({Key key, @required this.controller}) : super(key: key);

  final YoutubePlayerController controller;

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState(controller);
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  _VideoPlayerScreenState(this.controller);

  final YoutubePlayerController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            Center(
              child: YoutubePlayer(
                controller: controller,
                showVideoProgressIndicator: true,
              ),
            ),
            Positioned(
              top: 40.0,
              right: 20.0,
              child: IconButton(
                  icon: Icon(
                    EvaIcons.closeCircle,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            )
          ],
        ));
  }
}
