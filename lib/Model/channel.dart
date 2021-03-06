import 'package:flutter/widgets.dart';

class Channel{
  Widget _channelProfile;
  String _channelName;

  Channel(Widget profile, String name){
    this._channelName = name;
    this._channelProfile = profile;
  }

  Widget get channelProfile => this._channelProfile;
  String get channelName => this._channelName;
}