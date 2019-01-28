//函数基本语法
void main(){
  printNameA("XiaoMing");
  printNameB("XiaoMing");
  printNameC("XiaoMing");
}
// 规范语法
void printNameA(String name){
  print("My name is $name.");
}
// 通俗语法
printNameB(name){
  print("My name is $name.");
}
// 速写语法
void printNameC(String name) => print("My name is $name.");

//主函数:main() 函数，作为程序的入口，返回值是void，还有一个可选参数
//void main(List<String> arguments) {
//  print(arguments);
//  print(arguments.length);
//}

//可选参数
//(命名参数)
//void main() {
//  printName(name:"XiaoMing", age:14);
//}
// 用 { } 把参数包装起来，就能标识命名参数
// 用 : 指定默认值
void printName({String name, int age, String sex:"female"}){
  print("My name is $name, $age years old, gender $sex.");
}
//(位置参数)
main1(List<String> arguments) {
  print(say("Bob", "Howdy"));
  print(say("Bob", "Howdy", "smoke signal"));
}
// 用 [ ] 把参数包装起来，就能标识位置参数
// 用 = 指定默认值
String say(String from, String msg, [String device, String mood = "good"]){
  String result = "$from says $msg.";
  if (device != null) {
    result = "$result with a $device.";
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  return result;
}

//(高阶函数)
//将函数作为参数传递给另一个函数
void main2() {
  List list = [1, 2, 3];
  list.forEach(printElement);
}
printElement(element){
  print(element);
}
//将一个函数分配给一个变量
void main3() {
  var loudify = (msg) => "!!! ${msg.toUpperCase()} !!!";
  print(loudify("hello"));
}

//(闭包)
//dart的闭包就是函数对象，其实跟JavaScript的闭包函数差不多，理论请参考JavaScript的闭包函数
void main4() {
  // 创建一个函数add2，返回加2
  Function add2 = makeAdder(2);
  // 创建一个函数add4，返回加4
  Function add4 = makeAdder(4);

  // 2 + 3 = 5
  print(add2(3));
  // 4 + 3 = 7
  print(add4(3));
}
// 返回一个函数对象，功能是返回累加的数字
Function makeAdder(int addBy){
  return (int i) => addBy + i;
}

//(函数判断)
void main5() {
  var x;
  // 比较高阶函数
  x = foo;
  print(foo == x);
  // 比较静态方法
  x = SomeClass.bar;
  print(SomeClass.bar == x);
  // 比较实例方法
  var v = new SomeClass();
  var w = new SomeClass();
  var y = w;
  x = w.baz;
  print(y.baz == x);
  print(v.baz != w.baz);
}
// 一个高阶函数
foo(){}
class SomeClass{
  // 一个静态方法
  static void bar(){}
  // 一个实例方法
  void baz(){}
}


//--------------------------------运算符-----------------------------
//dart定义的运算符如下所示，前排的优先级高于后排的，例如”%“ > ”==“ > ”&&“，但括号能改变优先级
//(类型运算符)
//用as、is和is!可以很方便的在执行时检查类型
//用 obj is T 这个语法可以判断obj是否实现了T
//if (emp is Person) {
//emp.firstName = 'Bob';
//}
//也可以使用as运算符检查
//(emp as Person).firstName = 'Bob';



