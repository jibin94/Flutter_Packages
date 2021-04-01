import 'dart:async';
import 'package:flutter/material.dart';

class StreamPage extends StatefulWidget {
  @override
  _StreamPageState createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {

  final StreamController _streamController = StreamController();

  addData()async{
    for(int i = 1; i<= 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      _streamController.sink.add(i);
    }
  }

  Stream<int> numberStream() async*{
    for(int i = 1; i<= 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _streamController.close();
  }

  @override
  void initState() {
    super.initState();
    addData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream"),
      ),
      body: Center(
          child: StreamBuilder(
            stream: _streamController.stream,
            //stream: numberStream(),
            //stream: numberStream().where((num) => num%2==0),
            //stream: numberStream().map((number) => "number $number"),
            builder: (context, snapshot){
              if(snapshot.hasError)
                return Text("hey there is some error");
              else if (snapshot.connectionState == ConnectionState.waiting)
                return CircularProgressIndicator();
              return Text("${snapshot.data}", style: Theme.of(context).textTheme.display1,);
            },
          )
      ),
    );
  }
}