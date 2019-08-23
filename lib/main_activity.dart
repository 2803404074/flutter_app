import 'package:flutter/material.dart';
import 'package:flutter_app/fragment/fourth_view.dart';
import 'package:flutter_app/fragment/home_view.dart';
import 'package:flutter_app/fragment/second_view.dart';
import 'package:flutter_app/fragment/third_view.dart';

class MainPageActivity extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPageActivity> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//        title: '基础',
        theme: ThemeData(
          fontFamily: 'RubikMonoOne',
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            //appBar: AppBar(title: Text('基础')),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: _index,
                onTap: (index) {
                  setState(() {
                    _index = index;
                  });
                },
                fixedColor: Colors.green,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        color: Colors.grey,
                      ),
                      activeIcon: Icon(
                        Icons.home,
                        color: Colors.green,
                      ),
                      title: Text(
                        '首页',
                      )),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.list,
                        color: Colors.grey,
                      ),
                      activeIcon: Icon(
                        Icons.list,
                        color: Colors.green,
                      ),
                      title: Text(
                        '直播',
                      )),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.list,
                        color: Colors.grey,
                      ),
                      activeIcon: Icon(
                        Icons.list,
                        color: Colors.green,
                      ),
                      title: Text('商城')),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.list,
                        color: Colors.grey,
                      ),
                      activeIcon: Icon(
                        Icons.list,
                        color: Colors.green,
                      ),
                      title: Text('我的'))
                ]),
            body: _getIndex(_index)));
  }

  StatefulWidget _getIndex(int index) {
    if (index == 0) {
      return HomeView();
    }
    if (index == 1) {
      return SecondView();
    }
    if (index == 2) {
      return ThirdView();
    }
    if (index == 3) {
      return FourthView();
    }
  }
}
