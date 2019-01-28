//类
//使用级联操作符 .. 对一个对象成员做一系统操作
//获取一个对象
//querySelector('#button')
////使用它的成员
//..text = 'Confirm'
//..classer.add('important')
//..onClick.listen((e) => window.alert('Confirmed!'));

//(构造函数)
//声明一个构造函数就是创建一个与类同名的函数，关键字 this 是指当前的，只有在命名冲突时有效，否则dart会忽略处理
class Point {
  num x;
  num y;

  Point(num x, num y) {
    this.x = x;
    this.y = y;
  }
}

//通常一个实例变量分配一个构造函数参数，这样使语法理简单
class Point1 {
  num x;
  num y;

  Point1(this.x, this.y);
}


//(命名构造函数)
//使用命名构造函数让类有多个构造函数
class Point2 {
  num x;
  num y;

  Point2(this.x, this.y);

  //命名的构造函数
  Point2.fromJson(Map json) {
    x = json['x'];
    y = json['y'];
  }
}
//调用父类的非默认构造函数
class Person {
  Person.fromJson(Map data) {
    print('in Person');
  }
}
class Employee extends Person {
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }

}
main(List<String> arguments) {
  var emp = new Employee.fromJson({});
}

//初始化列表
//class Point {
//  num x;
//  num y;
//  Point(this.x, this.y);
//  Point.fromJson(Map jsonMap)
//      : x = jsonMap['x'],
//        y = jsonMap['y'] {
//    print('In Point.fromJson(): ($x, $y)');
//  }
//}

//重定向构造函数
//有时一个构造函数的唯一目的是重定向到同类的另一个构造函数
//class Point {
//  num x;
//  num y;
//  Point(this.x, this.y);
//  Point.alongXAxis(num x) : this(x, 0);
//}

//常量构造函数
//如果一个类生成的对象永远不会改变，你可以让这些对象变成编译时常量，为此定义一个 const 构造函数并确保所有实例变量是 final 的
class ImmutablePoint {
  final num x;
  final num y;
  const ImmutablePoint(this.x, this.y);
  static final ImmutablePoint origin = const ImmutablePoint(0, 0);
}

//工厂构造函数
//使用 factory 关键字实现构造函数时，不一定要创建一个类的新实例，
// 例如，一个工厂的构造函数可能从缓存中返回一个实例，或者返回一个子类的实例
class Logger {
  final String name;
  bool mute = false;
  static final Map<String, Logger> _cache = <String, Logger>{};
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }
  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}
main1(List<String> arguments) {
  var logger = new Logger('UI');
  logger.log('Button clicked');
}


//getter和setter
class Rectangle {
  num left;
  num top;
  num width;
  num height;

  Rectangle(this.left, this.top, this.width, this.height);

  //定义两个计算属性：右边和底部
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

main2(List<String> arguments) {
  var rect = new Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
  rect.right = 12;
  assert(rect.left == -8);
}

//
