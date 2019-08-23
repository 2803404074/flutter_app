
import 'package:flutter/material.dart';

class ThirdView extends StatefulWidget {
  @override
  _ThirdState createState()=>_ThirdState();
}

class _ThirdState extends State<ThirdView>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Text('商城'),
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
                  Text('商城内容'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

