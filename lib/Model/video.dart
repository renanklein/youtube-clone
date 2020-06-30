import 'package:flutter/material.dart';
import 'channel.dart';

class Video{
  Widget _videoThumbnail;
  String _videoTitle;
  String _uploadTime;
  Channel _channel;
  String _views;

  Video(Widget thumbnail, String title, Channel channel, String views, String time){
    this._videoThumbnail =  thumbnail;
    this._videoTitle = title;
    this._channel = channel;
    this._views = views;
    this._uploadTime = time;

    formatViews();
  }

  Widget get videoThumbnail => this._videoThumbnail;
  String get videoTitle => this._videoTitle;
  Channel get channel => this._channel;
  String get views => this._views; 
  String get uploadTime => this._uploadTime;

  void formatViews(){
    var viewsInt = int.parse(this._views);

    if(viewsInt > 1000){
      this._views = (viewsInt/1000).toString() + "K views";
    }
  }
}