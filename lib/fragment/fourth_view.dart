
import 'package:flutter/material.dart';

class FourthView extends StatefulWidget {
  @override
  _FourthViewState createState()=>_FourthViewState();
}

class _FourthViewState extends State<FourthView>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Text('个人中心'),
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
                  Text('昵称'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

