import 'package:DartTest/DartTest.dart' as DartTest;
import 'package:path/path.dart' as path;
import 'dart:io' show Directory;
main(List<String> arguments) {
//  StringBuffer xiaomingSaid = new StringBuffer();
//  xiaomingSaid.write("test is best");
//  xiaomingSaid.write("   111111");
//  print(xiaomingSaid.toString()+",is empty");
//  xiaomingSaid.clear();
//  var test = xiaomingSaid.toString().isEmpty;
//
//  print("isempty?$test");
//  List<int> fixedLengthList = new List(5);
//  fixedLengthList[0]=1234;
//  fixedLengthList[1]=1234;
//  fixedLengthList[2]=1234;
//  fixedLengthList[3]=1234;
//  fixedLengthList[4]=1234;
//  print(fixedLengthList);
//
//  List<int> growableList = [];
//  growableList.length = 0;
//  growableList.add(222);
//  growableList.add(333);
//  growableList.add(444);
//  growableList.add(666);
//  growableList.add(666);
//  growableList.add(777);
//  growableList.add(888);
//  growableList.add(999);
//  print(growableList.toSet());
//  print(growableList.join('#'));

//  printNameC("Ross 软件");
//  printNameA(name:"螺丝钉",age: 19,sex: 'girl');
//
//  List list = [1, 2, 3];
//  list.forEach(printElement);
//
//  var loudify = (msg) => "!!! ${msg.toUpperCase()} !!!";
//  print(loudify("hello"));

//  String text = "";
//  //确保变量非空
//  assert(text != null);//确保text不为null,如果text为null则退出;

  //从当前目录到系统临时目录的路径
  print(path.relative(Directory.systemTemp.path));

  //使用相对路径
  DateTime victoryDay = new DateTime(1945,9,9);
  print("日本于${victoryDay.year}年${victoryDay.month}月${victoryDay.day}日在南京签署中国战区投降书");

}
//void printNameC(String name)=>print("My name is $name");
//void printNameA({String name, int age, String sex:"female"})=>print("My name is $name, $age years old, gender $sex.");
//void printElement(element)=>print(element);

