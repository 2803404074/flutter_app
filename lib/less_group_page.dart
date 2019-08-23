import 'package:flutter/material.dart';

class LessGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '基础',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('基础4')),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'I Text',
                style: TextStyle(fontSize: 25.0),
              ),
              Icon(
                Icons.android,
                size: 50,
                color: Colors.red,
              ),
              CloseButton(),
              BackButton(),
              Chip(
                  avatar: Icon(Icons.people),
                  label: Text('牛逼')
              ),
              Divider(//分割线
                height: 10,//容器高度
                indent: 10,//左侧间距
                color: Colors.orange,
              ),

              Card(//带有圆角、边框、阴影等效果的卡片
                color: Colors.blue,
                elevation: 4,//阴影
                margin: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text('我是Card组件')
                ),
              ),

              AlertDialog(
                title: Text('我是弹窗'),
                content: Text('牛逼'),
              )

            ],
          ),
        ),
      ),
    );
  }
}
