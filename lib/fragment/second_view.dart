
import 'package:flutter/material.dart';

class SecondView extends StatefulWidget {
  @override
  _SecondState createState()=>_SecondState();
}

class _SecondState extends State<SecondView>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Text('视频'),
            leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            )
        ),
        body: FractionallySizedBox(
          widthFactor: 1,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('直播内容'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

