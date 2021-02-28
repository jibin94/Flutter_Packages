import 'package:flutter/material.dart';

class TweenAnimationPage extends StatefulWidget {
  @override
  _TweenAnimationPageState createState() => _TweenAnimationPageState();
}

class _TweenAnimationPageState extends State<TweenAnimationPage> {
  double opacityvalue = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                  onEnd: () {
                    setState(() {
                      opacityvalue = 1;
                    });
                  },
                  curve: Curves.bounceOut,
                  tween: Tween<double>(begin: 30, end: 100),
                  duration: Duration(seconds: 2),
                  builder: (BuildContext context, dynamic value, Widget child) {
                    return Icon(
                      Icons.flash_on,
                      color: Colors.red,
                      size: value,
                    );
                  }),
              AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: opacityvalue,
                child: Text(
                  'Power On',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
