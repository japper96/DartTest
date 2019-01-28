//-------------------------------------------lib库--------------------------------------
//导入Pub上的库:sqljocky是用来连接MySQL的
//name: test_app
//dependencies:
//sqljocky: ^0.14.1
//(连接Mysql并获取数据的操作方法)
//import 'package:sqljocky/sqljocky.dart';
//void main() {
//  // 创建一个连接池
//  var pool = new ConnectionPool(host:'localhost', port:3306, user:'bob', password:'wibble', db:'userdb', max:5);
//  // 执行一个查询
//  var results = pool.query('SELECT user_id,telphone FROM t_user WHERE telphone="13823128549" OR user_id="699"');
//  // 遍历查询结果（forEach是异步操作）
//  results.then((results){
//    results.forEach((row){
//      print('UserId:${row[0]}, Telphone:${row[1]}');
//      print('UserId:${row.user_id}, Telphone:${row.telphone}');
//    });
//  });
//}

//如果两个库有冲突的标识符，可以为其中一个或两个库都指定前缀
//import 'package:lib1/lib1.dart';
//import 'package:lib2/lib2.dart' as lib2;
//// ...
//var element1 = new Element();
//var element2 = new lib2.Element();

//如果只需要使用库的一部分，可以选择性的导入
////只导入foo
//import 'package:lib1/lib1.dart' show foo;
////导入除了foo以外的所有
//import 'package:lib2/lib2.dart' hide foo;

//延迟加载库，您必须使用deferred as，await 关键字暂停执行直到加载库，您可以多次使用loadLibrary()，库只加载一次
//import 'package:deferred/hello.dart' deferred as hello;
//// 当你需要使用库，使用 loadLibrary() 调用库
//greet() async {
//  await hello.loadLibrary();
//  hello.printGreeting();
//}


//-------------------------------------------泛型--------------------------------------
//dart中所有基本类型数组和列表都是泛型，这样可以提高代码的可读性
//void main(){
//  var names = new List<String>();
//  names.addAll(['Seth', 'Kathy', 'Lars']);
//  // 检查模式编译失败，生产模式编译成功
//  names.add(42);
//}

//泛型可以减少代码重复，也可以创建多类型共享的接口，同时还能在检查模式早期预警，比如创建一个接口缓存对象
abstract class ObjectCache {
  Object getByKey(String key);
  setByKey(String key, Object value);
}

//如果还要创建String的接口、number的接口就会很麻烦，使用泛型可以节省创建这些接口的麻烦
abstract class Cache<T> {
  T getByKey(String key);
  setByKey(String key, T value);
}

//dart的泛型需要具体化，这意味着泛型在运行时携带着类型信息
//var names = new List<String>();
//names.addAll(['Seth', 'Kathy', 'Lars']);
//print(names is List<String>);



//-------------------------------------------异常--------------------------------------
//dart会抛出并捕获异常，如果没有捕获异常，就会中断运行或结束程序，与Java不同的是dart的所有异常都是未经检查的，dart提供了Exception、Error类型，以及更多的子类型，也可以自定义异常
//Throw
//// 抛出一个异常
//throw new FormatException('Expected at least 1 section');
//// 抛出任意异常对象
//throw 'Out of llamas!';
//// 用=> statements在任何地方抛出任意异常
//distanceTo(Point other) => throw new UnimplementedError();

//Catch
//捕获异常并处理
//try {
//breedMoreLlamas();
//} on OutOfLlamasException {
//buyMoreLlamas();
//}
//多个类型可以指定多个异常处理，可以使用on和catch或两者都用，使用on指定异常类型，使用catch给异常处理程序一个异常对象
//try {
//breedMoreLlamas();
//} on OutOfLlamasException {
////指定的异常
//buyMoreLlamas();
//} on Exception catch (e) {
////所有异常
//print('Unknown exception: $e');
//} catch (e) {
////没有指定类型,处理所有异常
//print('Something really unknown: $e');
//}

//Finally
//确保代码的运行，不管是否抛出异常，使用finally子句，无论是否有匹配异常的catch子句，最终都执行finally子句
//try {
//breedMoreLlamas();
//} finally {
////总是执行，即使抛出异常
//cleanLiamaStalls();
//}

//匹配任何异常catch子句后运行finally子句
//try {
//breedMoreLlamas();
//} catch(e) {
////首先处理异常
//print('Error: $e');
//} finally {
////然后执行
//cleanLiamaStalls();
//}



//assert
//使用assert语句，如果布尔值为false就扰乱正常运行，只在检查模式下生效
////确保变量非空
//assert(text != null);
////确保值小于100
//assert(number < 100);
////确保这是一个https URL
//assert(urlString.startsWith('https'));