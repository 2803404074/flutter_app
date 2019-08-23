import 'package:flutter/material.dart';

class FlutterLayoutPage extends StatefulWidget {
  @override
  _FlutterLayoutPageState createState() => _FlutterLayoutPageState();
}

class _FlutterLayoutPageState extends State<FlutterLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '基础',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
          appBar: AppBar(title: Text('基础4')),

          //悬浮按钮
          floatingActionButton: FloatingActionButton(
            onPressed: null, //点击事件
            child: Text('点我'),
          ),
          body: RefreshIndicator(
              child: ListView(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            ClipOval(
                              child: SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.network(
                                  'http://pic30.nipic.com/20130619/9885883_210838271000_2.jpg'
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: ClipRect(
                                child: Opacity(opacity: 0.6),
                              ),
                            )
                          ],
                        ),

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
                        Chip(avatar: Icon(Icons.people), label: Text('牛逼')),
                        Divider(
                          //分割线
                          height: 10, //容器高度
                          indent: 10, //左侧间距
                          color: Colors.orange,
                        ),
                        Card(
                          //带有圆角、边框、阴影等效果的卡片
                          color: Colors.blue,
                          elevation: 4, //阴影
                          margin: EdgeInsets.all(10),
                          child: Container(
                              padding: EdgeInsets.all(10),
                              child: Text('我是Card组件')),
                        ),
                        AlertDialog(
                          title: Text('我是弹窗'),
                          content: Text('牛逼'),
                        ),

                        //图片组件
                        Image.network(
                          'http://pic30.nipic.com/20130619/9885883_210838271000_2.jpg',
                          width: 100,
                          height: 100,
                        ),

                        //输入框
                        TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              hintText: '请输入',
                              hintStyle:
                                  TextStyle(fontSize: 15, color: Colors.grey)),
                        ),

                        //viewpage
                        Container(
                          height: 100,
                          margin: EdgeInsets.only(top: 10),
                          decoration:
                              BoxDecoration(color: Colors.lightBlueAccent),
                          child: PageView(
                            children: <Widget>[
                              _item(0, 'page1', Colors.deepPurple),
                              _item(1, 'page2', Colors.deepOrange),
                              _item(2, 'page3', Colors.red)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              onRefresh: _handleRefresh)),
    );
  }

  Future<Null> _handleRefresh() async {
    await Future.delayed(Duration(microseconds: 200));
    return null;
  }

  _item(int index, String title, MaterialColor color) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color),
      child: Text(title, style: TextStyle(color: Colors.white)),
    );
  }
}
