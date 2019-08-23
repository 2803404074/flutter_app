
import 'package:flutter/material.dart';

/**
 * 生命周期
 *
 * 1、初始化时期
 *     createState、 initState
 *
 * 2、更新时期
 *      didChangeDependencies、buid、didUpdateWidget
 *
 * 3、销毁期
 *      deactivate、dispose
 */
class WidgetLifecycle extends StatefulWidget {

  ///当构建一个新的statefulwidget时，这个会立即调用createState()
  ///并且必须覆盖
  @override
  _WidgetLifecycleState createState() => _WidgetLifecycleState();

  

}

class _WidgetLifecycleState extends State<WidgetLifecycle> {
  
  //类似android 的 oncreate()
  //在该方法中通常做一些初始化工作，比如channel的初始化，监听器的初始化等
  @override
  void initState() {
    // TODO: implement initState
    print('------------initState（）执行--------------');
    super.initState();
  }

  //在第一次构建widget时，initState（）后立即调用
  //
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print('------------didChangeDependencies（）执行--------------');
    super.didChangeDependencies();
  }

  //在didChangeDependencies（）之后立即调用
  //当调用setState后也会再次调用该方法
  @override
  Widget build(BuildContext context) {
    print('------------build（）执行--------------');
    return Container();
  }

  //当父组件需要重绘的时候才会调用
  @override
  void didUpdateWidget(WidgetLifecycle oldWidget) {
    print('------------didUpdateWidget（）执行--------------');
    super.didUpdateWidget(oldWidget);
  }

  //
  @override
  void deactivate() {
    print('------------deactivate（）执行--------------');
    // TODO: implement deactivate
    super.deactivate();
  }

  //组件被销毁的时候调用
  //通常在该方法做资源释放等
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


}
