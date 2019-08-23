
import 'package:flutter/material.dart';

//常用数据类型
class DataType extends StatefulWidget {
  @override
  _DataTypeState createState() => _DataTypeState();
}

class _DataTypeState extends State<DataType> {
  @override
  Widget build(BuildContext context) {
    _numType();
    return Container(child: Text('常用数据类型'),);
  }

  //数字类型
  void _numType() {
    num num1 = 1.0;//数字类型的父类
    num num2 = 2;

    int int1 = 3;
    double d1 = 1.68;

    print("num:$num1");
  }


  //字符串
  void _stringType() {
    String a = 'aa',b='bbb';

  }


  void _MapType() {
    Map aa = {'name':'小明','age':'18'};

    Map bb = {};
    bb['name'] = 1;
    bb['age'] = 18;


    //遍历1
    bb.forEach((k,v){
      print('$k,$v');
    });

    //遍历2
    bb.map((k,v){
      return MapEntry(v,k);
    });


    //遍历3
    for(var key in bb.keys){
      print('$key ${bb[key]}');
    }
  }
}


//工厂构造方法
class Logger{
  String _stringData;
  static Logger _loggeer;
  factory Logger(){
    if(null == _loggeer){
      _loggeer = Logger._internal();
    }
    return _loggeer;
  }
  Logger._internal();

  //get方法
  String get stringData => _stringData;

  //set方法
  set stringData(String data){
    _stringData = data;
  }
}



class Student extends Person{

  String _school;//下划线开头的变量 表示 私有字段
  String city;
  String country;

  //继承父类，重载父类构造方法
  //可通过 this.xxx 初始化自有参数          {this.xxx}可选参数
  Student(this._school,String name, int age,{this.city}) : super(name, age);//类的初始化列表
}

class Person{
  String name;
  int age;

  //构造方法
  Person(this.name,this.age);

  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }

  List list;


  //判断技巧
  int _getListSize(){


    // 判断1
    if(list[0] == null || list[0] == ''|| list[0] == 0){

    }

    //简化判断1
    if([null,'',0].contains(list[0])){

    }



    //return list.length;
    //return list?.length ?? 100;// 设置默认值
    return list?.length;//?.  防止空指针
  }
}
