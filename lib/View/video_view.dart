import 'package:flutter/material.dart';
import 'package:youtube_clone/Model/video.dart';

class VideoView extends StatelessWidget {
  final Video video;
  VideoView(this.video);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Image.asset(
            "assets/images/thumb.jpg",
            cacheWidth: 400,
            cacheHeight: 200,
            filterQuality: FilterQuality.low,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                  radius: 12.0,
                  backgroundImage: AssetImage("assets/images/profile.png")),
              SizedBox(
                width: 10.0,
              ),
              Text(
                this.video.videoTitle,
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 2.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55.8),
          child: Row(
            children: <Widget>[
              Text(
                this.video.channel.channelName + " .",
                style: TextStyle(color: Colors.grey, fontSize: 10.0),
              ),
              SizedBox(
                width: 2.0,
              ),
              Text(
                this.video.views + " .",
                style: TextStyle(color: Colors.grey, fontSize: 10.0),
              ),
              SizedBox(
                width: 2.0,
              ),
              Text(this.video.uploadTime,
                  style: TextStyle(color: Colors.grey, fontSize: 10.0))
            ],
          ),
        )
      ],
    );
  }
}
