import 'package:flutter/material.dart';

/**
 * 获取应用的生命周期
 *
 * WidgetsBindingObserver: 是一个Widgets绑定观察器，通过他可以监听应用的生命周期
 */
class AppLifecycle extends StatefulWidget {
  ///当构建一个新的statefulwidget时，这个会立即调用createState()
  ///并且必须覆盖
  @override
  _AppLifecycleState createState() => _AppLifecycleState();
}

class _AppLifecycleState extends State<AppLifecycle>
    with WidgetsBindingObserver {
  @override
  void initState() {
    // TODO: implement initState
    //在初始化时，添加监听器
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  //在didChangeDependencies（）之后立即调用
  //当调用setState后也会再次调用该方法
  @override
  Widget build(BuildContext context) {
    print('------------build（）执行--------------');
    return Container(

    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print('state = $state');
    if(state == AppLifecycleState.paused){
      print('app进入后台');
    }else if(state == AppLifecycleState.resumed){
      print('app进入前台');
    }else if(state == AppLifecycleState.inactive){
      print('应用处于非活动状态');
    }else if(state == AppLifecycleState.suspending){
      print('应用被挂起');//android上触发
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
