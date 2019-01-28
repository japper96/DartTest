
//Dart核心库提供了List（列表）、Map（映射）、Set（集）三种集合类型
void main()
{
  //-----------------------------列表（List）--------------------------------
  //固定长度的列表，一旦定义就无法改变长度
  List<int> fixedLengthList = new List(5);
  fixedLengthList[0] = 87;
  print(fixedLengthList);
  print(fixedLengthList[0]);
  //可改变长度的列表，可以根据需要改变长度
  List<int> growableList = [1, 2];
  print(growableList);

  growableList.length = 0;
  print(growableList);

  growableList.add(499);
  print(growableList);

  growableList[0] = 87;
  print(growableList);

  //(构造函数)
  //--->List([int length])
  // 创建固定长度的列表
  List fixedLengthList1 = new List(3);
  print(fixedLengthList1.length);

  // 创建可改变长度的列表
  List growableListA = new List();
  print(growableListA.length);
  growableListA.length = 3;
  print(growableListA.length);

  // 创建可在固定范围内改变长度的列表
  List growableListB = new List()..length = 500;

  //--->List.unmodifiable(Iterable elements)
  // 创建包含所有元素的固定长度列表
  List fixedLengthListB = new List.unmodifiable([1, 2, 3]);
  print(fixedLengthListB.length);

  //--->List.from(Iterable elements, {bool growable: true})
  // 创建包含所有元素的可改变长度列表
  List growableListC = new List.from([1, 2, 3]);
  print(growableListC.length);
  growableListC.add(4);
  print(growableListC.length);

  //--->List.filled(int length, E fill, {bool growable: false})
  // 为所有元素统一赋值
  List fixedLengthList2 = new List<int>.filled(3, 0);
  print(fixedLengthList2);

  //--->List.generate(int length, E generator(int index), {bool growable: true})
  // 用生成器给所有元素赋初始值（index表示从0-3）
  List fixedLengthList3 = new List<int>.generate(4, (int index) {
    return index * index;
  });
  print(fixedLengthList3);

  //(所有属性)
  fixedLengthList = new List<int>.generate(4, (int index) {
    return index * index;
  });
  // 返回第一个元素
  print(fixedLengthList.first);
  // 返回最后一个元素
  print(fixedLengthList.last);
  // 返回列表的哈希码
  print(fixedLengthList.hashCode);
  // 列表是否为空
  print(fixedLengthList.isEmpty);
  // 列表是否不为空
  print(fixedLengthList.isNotEmpty);
  // 返回一个新的迭代器
  print(fixedLengthList.iterator);
  // 列表中多少个元素
  print(fixedLengthList.length);
  // 返回相反顺序的列表
  print(fixedLengthList.reversed);
  // 返回对象运行时的类型
  print(fixedLengthList.runtimeType);
  // 列表是否只有一个元素，则否报错
//  print(fixedLengthList.single);

  //（常用方法）
  //返回多种类型的输出
  growableList = new List.from([1, 2, 3]);
  // 返回列表的字符串表示
  print(growableList.toString());
  // 返回列表的集表示
  print(growableList.toSet());
  // 返回列表的列表表示
  print(growableList.toList());
  // 用指定字符连接列表元素
  print(growableList.join(","));

  //给列表增加元素
  growableList = new List();
  // 增加一个元素到列表末尾
  growableList.add(10);
  print(growableList);
  // 增加一个元素到指定下标
  growableList.insert(1, 20);
  print(growableList);
  // 增加一个列表到列表末尾
  growableList.addAll([30, 60]);
  print(growableList);
  // 增加一个列表到指定下标
  growableList.insertAll(3, [40, 50]);
  print(growableList);

  //各种删除操作的方法
  growableList = new List.from([1, 2, 3, 3, 3, 4]);
  // 移除列表中匹配的第一个元素
  growableList.remove(3);
  print(growableList);
  // 移除列表中第几个元素
  growableList.removeAt(0);
  print(growableList);
  // 移除列表中最后一个元素
  growableList.removeLast();
  print(growableList);
  // 移除列表的所有元素
  growableList.clear();
  print(growableList);

  List<int> listB = [1, 2, 3, 4, 5];
  // 移除开始下标（不包括）至结束下标（包括）内的元素
  listB.removeRange(1, 4);
  print(listB);

  List<int> listA = [1, 2, 3, 4, 5];
  // 移除并替换开始下标（不包括）至结束下标（包括）内的元素
  listA.replaceRange(1, 4, [6, 7]);
  print(listA);

  List<String> numbersA = ['one', 'two', 'three', 'four'];
  /*  移除所有满足条件的元素，此为Dart的一种速写语法
        numbersA.removeWhere((item) => item.length == 3);   */
  numbersA.removeWhere((item){
    return item.length == 3;
  });
  print(numbersA);

  List<String> numbersB = ['one', 'two', 'three', 'four'];
  /*  移除所有不满足条件的元素，此为Dart的一种速写语法
        numbersB.retainWhere((item) => item.length == 3);   */
  numbersB.retainWhere((item){
    return item.length == 3;
  });
  print(numbersB);

  //按顺序迭代列表
  List<String> names = ["Alice", "Daphne", "Elizabeth", "Joanna"];
  names.forEach((name){
    print(name);
  });
  //各种查询输出方法
  names = ['Abbey', 'Fallon', 'Xenia', 'Callie', 'Callie'];
  // 列表中是否包含指定元素
  print(names.contains('Fallon'));
  // 返回列表中的第几个元素
  print(names.elementAt(2));
  // 返回列表中第一个匹配元素的下标
  print(names.indexOf('Callie'));
  // 返回列表中最后一个匹配元素的下标
  print(names.lastIndexOf('Callie'));

  List<String> colors = ['red', 'green', 'blue', 'orange', 'pink'];
  // 返回从开始下标（包括）到结束下标（不包括）元素的列表
  print(colors.sublist(1, 3));
  // 返回从开始下标（包括）到最后一个元素的列表
  print(colors.sublist(1));

  //对列表元素做一些改动
  List<String> listDemoA = ['a', 'b', 'c'];
  // 从第几个元素开始覆盖原列表
  listDemoA.setAll(1, ['bee', 'sea']);
  print(listDemoA);

  List<int> listDemoB = [1, 2, 3, 4, 5];
  // 对列表进行随机排序
  listDemoB.shuffle();
  print(listDemoB);

  List<int> listC = [1, 2, 3, 4, 5];
  // 对列表进行顺序排序
  listC.sort();
  print(listC);

  //--------------------------------------------映射（Map）---------------------------------------------
  //映射也就是键值对，每个键都有与之相关联的一个值
  //(构造函数)
  //Map()
  Map<String, int> map = {"a":1, "b":2, "c":3};
  print(map["a"]);

  //Map.fromIterable(Iterable iterable, {K key(element), V value(element)})
  List<int> list = [1, 2, 3];
  // 以下代码用到了速写语法，后面会详细讲解
  Map<String, int> map2 = new Map.fromIterable(list,
      key: (item) => item.toString(),
      value: (item) => item * item);
  // 1 + 4 = 5
  print(map2['1'] + map2['2']);
  // 9 - 4 = 5
  print(map2['3'] - map2['2']);

  //Map.fromIterables(Iterable keys, Iterable values)
  List<String> letters = ['b', 'c'];
  List<String> words = ['bad', 'cat'];
  Map<String, String> map3 = new Map.fromIterables(letters, words);
  // bad + cat = badcat
  print(map3['b'] + map3['c']);

  //(所有属性)
  Map<String, int> newMap = {"a":1, "b":2, "c":3};
  // 返回映射的哈希码
  print(newMap.hashCode);
  // 映射上是否没有键值对
  print(newMap.isEmpty);
  // 映射上是否有键值对
  print(newMap.isNotEmpty);
  // 返回映射的所有键
  print(newMap.keys);
  // 返回映射的所有值
  print(newMap.values);
  // 返回映射上键值对的数目
  print(newMap.length);
  // 返回对象运行时的类型
  print(newMap.runtimeType);

  //(常用方法)
  Map<String, int> map_t = {"a":1, "b":2, "c":3};
  // 返回映射的字符串表示
  print(map_t.toString());
  // 按顺序迭代映射
  map_t.forEach((key, value){
    print(key + " : " + value.toString());
  });
  // 添加其他键值对到映射中
  map_t.addAll({"d":4, "e":5});
  // 映射是否包含指定键
  print(map_t.containsKey("d"));
  // 映射是否包含指定值
  print(map_t.containsValue(5));
  // 删除指定键值对
  map_t.remove("a");
  // 删除所有键值对
  map_t.clear();

  Map<String, int> scores = {'Bob': 36};
  for (var key in ['Bob', 'Rohan', 'Sophena']) {
    // 查找指定键，如果不存在就添加
    scores.putIfAbsent(key, () => key.length);
  }
  print(scores['Bob']);
  print(scores['Rohan']);
  print(scores['Sophena']);


  //--------------------------------------------------------集（Set）--------------------------------------------
  //集的每个对象只能出现一次，不能重复
  Set villains = new Set();
  villains.add('Joker');
  villains.addAll( ['Lex Luther', 'Voldemort'] );
  print(villains);

  //(所有属性)
  villains = new Set.from(['Joker', 'Lex Luther', 'Voldemort']);
  // 返回第一个元素
  print(villains.first);
  // 返回最后一个元素
  print(villains.last);
  // 返回元素的数量
  print(villains.length);
  // 集只有一个元素就返回元素，否则异常
  //print(villains.single);
  // 集是否没有元素
  print(villains.isEmpty);
  // 集是否有元素
  print(villains.isNotEmpty);
  // 返回集的哈希码
  print(villains.hashCode);
  // 返回对象运行时的类型
  print(villains.runtimeType);
  // 返回集的可迭代对象
  print(villains.iterator);

  //(常用方法)
  villains = new Set.from(["A", "B", "C"]);
  // 添加一个值
  villains.add("D");
  print(villains);
  // 添加一些值
  villains.addAll(["E", "F"]);
  print(villains);
  // 以字符串输出集
  print(villains.toString());
  // 将集的值用指定字符连接，以字符串输出
  print(villains.join(","));
  // 集是否包含指定值
  print(villains.contains("C"));
  // 集是否包含一些值
  print(villains.containsAll(["E", "F"]));
  // 返回集的第几个值
  print(villains.elementAt(1));
  // 删除集的指定值，成功则返回true
  print(villains.remove("A"));
  // 删除集的一些值
  villains.removeAll(["B", "C"]);
  // 删除集的所有值
  villains.clear();
}