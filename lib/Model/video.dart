import 'package:flutter/material.dart';
import 'channel.dart';

class Video{
  Widget _videoThumbnail;
  String _videoTitle;
  Channel _channel;
  String _views;

  Video(Widget thumbnail, String title, Channel channel, String views){
    this._videoThumbnail =  thumbnail;
    this._videoTitle = title;
    this._channel = channel;
    this._views = views;

    formatViews();
  }

  void formatViews(){
    var viewsInt = int.parse(this._views);

    if(viewsInt > 1000){
      this._views = (viewsInt/1000).toString() + "K views";
    }
  }
}