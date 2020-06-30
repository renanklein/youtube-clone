import 'package:flutter/material.dart';
import 'package:youtube_clone/Model/bottom_bar.dart';
import 'package:youtube_clone/Model/channel.dart';
import 'package:youtube_clone/Model/video.dart';
import 'package:youtube_clone/View/video_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube demo',
      theme: ThemeData(
        primaryColor: Color(0xff444444),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 final video = Video(
    Image.asset("assets/images/thumb.jpg"),
    "Some awsome video on youtube",
    Channel(Image.asset("assets/images/profile.png"), "myChannel"),
    "100000",
    "about 4 minutes"
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image(
            image: AssetImage("assets/images/youtube_logo.png"),
          ),
        ),
        title: Text(
          "YouTube",
          style: TextStyle(
            fontWeight: FontWeight.w400
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.videocam,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset("assets/images/profile2.png"),
            ),
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          VideoView(this.video),
          SizedBox(height: 12.0,),
          VideoView(this.video),
          SizedBox(height: 12.0,),
          VideoView(this.video),
          SizedBox(height: 12.0,),
          VideoView(this.video),
          SizedBox(height: 12.0,),
          VideoView(this.video),
          SizedBox(height: 12.0,),
          VideoView(this.video),
          SizedBox(height: 12.0,)
        ],
      ),
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xff444444),
          ),
          child: BottomBar()),
    );
  }
}
