import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_packages/animation/animationslider.dart';
import 'package:myflutter_packages/animation/tweenanimation.dart';
import 'package:myflutter_packages/flutterchewie/mychewie.dart';
import 'package:myflutter_packages/lazy_loading_page.dart';
import 'package:myflutter_packages/size_page.dart';
import 'package:myflutter_packages/speechtotext/speechscreen.dart';
import 'package:myflutter_packages/videoplayer/videohome.dart';
import 'package:myflutter_packages/videoplayercode1/splash_screen.dart';
import 'package:myflutter_packages/zoom_page.dart';
import 'package:provider/provider.dart';

import 'batterylevelindicator/batteryview.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter Packages',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Align(
          alignment: Alignment.center,
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width * .85,
                    child: FlatButton(
                      color: Color(0xff89DFC5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31),
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyBatteryView()));
                      },
                      child: Text(
                        'MyBatteryView',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width * .85,
                    child: FlatButton(
                      color: Color(0xff89DFC5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31),
                          side: BorderSide(color: Colors.white)),
                      onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => MyAnimationPage()));
                      },
                      child: Text(
                        'Animation slider',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width * .85,
                    child: FlatButton(
                      color: Color(0xff89DFC5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31),
                          side: BorderSide(color: Colors.white)),
                      onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => TweenAnimationPage()));
                      },
                      child: Text(
                        'Tween Animation',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width * .85,
                    child: FlatButton(
                      color: Color(0xff89DFC5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31),
                          side: BorderSide(color: Colors.white)),
                      onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => MyVideoPage()));
                      },
                      child: Text(
                        'Video1',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width * .85,
                    child: FlatButton(
                      color: Color(0xff89DFC5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31),
                          side: BorderSide(color: Colors.white)),
                      onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => SpeechScreen()));
                      },
                      child: Text(
                        'Speech To Text',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width * .85,
                    child: FlatButton(
                      color: Color(0xff89DFC5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31),
                          side: BorderSide(color: Colors.white)),
                      onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Splash()));
                      },
                      child: Text(
                        'Video2',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width * .85,
                    child: FlatButton(
                      color: Color(0xff89DFC5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31),
                          side: BorderSide(color: Colors.white)),
                      onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => LazyLoadingPage()));
                      },
                      child: Text(
                        'LazyLoadingPage',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width * .85,
                    child: FlatButton(
                      color: Color(0xff89DFC5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(31),
                          side: BorderSide(color: Colors.white)),
                      onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => ZoomPage()));
                      },
                      child: Text(
                        'ZoomPage',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
          ),
        ),
      ),
    );
  }
}

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChewieDemo(),
    );
  }
}*/
