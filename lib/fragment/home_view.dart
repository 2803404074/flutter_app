import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

//自定义状态栏
class MAppBar extends StatefulWidget implements PreferredSizeWidget {
  MAppBar({@required this.child}) : assert(child != null);
  final Widget child;

  @override
  Size get preferredSize {
    return new Size.fromHeight(56.0);
  }

  @override
  State createState() {
    return new MAppBarState();
  }
}

class MAppBarState extends State<MAppBar> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: widget.child,
      top: true,
    );
  }
}

class _HomeState extends State<HomeView> {
  String _title = "我是标题";

  double moveX = 0,moveY=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: new MAppBar(
          child: new Text(_title,style: TextStyle(fontFamily: 'RubikMonoOne'),),
        ),
        body: FractionallySizedBox(
          widthFactor: 1,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => _printMsg('点击了'),
                    onDoubleTap: () => _printMsg('双击了'),
                    child: Container(
                      padding: EdgeInsets.all(60),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                      ),
                      child:Container(
                        child: Image(image: AssetImage('images/test.png')),
                      )
                    ),
                  ),
                ],
              ),

              Positioned(
                //跟随手指滑动的小球
                left: moveX,
                top: moveY,
                child: GestureDetector(
                  onPanUpdate: (e) => _doMove(e),
                  child: Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(36)
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _printMsg(String a) {
    setState(() {
      _title = a;
    });
  }

  _doMove(DragUpdateDetails e) {
    setState(() {
      moveY += e.delta.dy;
      moveX += e.delta.dx;
    });
  }
}
