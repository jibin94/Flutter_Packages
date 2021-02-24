import 'package:flutter/material.dart';
import 'package:myflutter_packages/flutterchewie/mychewie.dart';
import 'package:myflutter_packages/lazy_loading_page.dart';
import 'package:myflutter_packages/size_page.dart';
import 'package:myflutter_packages/speechtotext/speechscreen.dart';
import 'package:myflutter_packages/videoplayer/videohome.dart';
import 'package:myflutter_packages/videoplayercode1/splash_screen.dart';
import 'package:myflutter_packages/zoom_page.dart';
void main() => runApp(MyApp());

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
}