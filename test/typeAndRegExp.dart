void main() {
  //-------------------------数字与布尔值-------------------------------
  //(部分属性)
  int figureA = -93;
  // figureA是否为负数
  print(figureA.isNegative);
  // figureA是否是有限的
  print(figureA.isFinite);
  // figureA是否正无穷大或负无穷大
  print(figureA.isInfinite);

  double figureB = 64.742;
  // 返回figureB的符号，-1.0:值小于0、+1.0:值大于0、-0.0/0.0/NaN:值是其本身
  print(figureB.sign);
  // 返回figureB运行时的类型
  print(figureB.runtimeType);
  // 返回figureB的哈希码
  print(figureB.hashCode);

  int figureC = 13;
  // figureC是否为奇数
  print(figureC.isOdd);
  // figureC是否为偶数
  print(figureC.isEven);
  // 返回figureC所占存储位
  print(figureC.bitLength);

  //(常用方法)
  // 返回figureA的绝对值
  print(figureA.abs());
  // 返回figureA的字符串
  print(figureA.toString());

  // 返回figureB的整数值
  print(figureB.toInt());
  // 返回figureB的双精度值
  print(figureB.toDouble());
  // 返回大于figureB的双精度值
  print(figureB.ceilToDouble());
  // 返回小于figureB的双精度值
  print(figureB.floorToDouble());
  // 返回figureB四舍五入的双精度值
  print(figureB.roundToDouble());
  // 返回figureB保留几位小数的字符串
  print(figureB.toStringAsFixed(2));
  // 返回figureB保留几位小数后精确结果的字符串
  print(figureB.toStringAsPrecision(3));

  // figureC对比其他整数，0:相同、1:大于、-1:小于
  print(figureC.compareTo(20));
  // 将figureC控制在指定区间的整数
  print(figureC.clamp(20, 25));
  // 返回figureC转换成指定基数(进制)的字符串
  print(figureC.toRadixString(16));

  int figureD = 12;
  // 返回figureD与其他整数的最大公约数
  print(figureD.gcd(18));
  // 返回figureDg与其他整数的截取余数
  print(figureD.remainder(18));
  // 返回figureD几次幂值的字符串
  print(figureD.toStringAsExponential(2));

  //-------------------------字符串常量与变量-------------------------------
  String name = "XiaoMing say : \n";
  String say = """
Keep on going ...
never give up ...
never say die ...
""";
  print(name + say);

  //(部分属性)
  String str = "Hello world!";
  // 返回字符串的UTF-16代码单元列表
  print(str.codeUnits);
  // 返回根据代码单元生成的哈希码
  print(str.hashCode);
  // 字符串是否为空
  print(str.isEmpty);
  // 字符串是否不为空
  print(str.isNotEmpty);
  // 字符串的长度
  print(str.length);
  // 返回字符串Unicode代码的可迭代对象
  print(str.runes);
  // 返回对象运行时的类型
  print(str.runtimeType);

  //(常用方法)
  String str1 = "Hello world!";
  //返回对象的字符串表示
  print(str1.toString());
  //截取字符串
  str = 'Dart is fun';
  String newStr = str.substring(0, 4);
  print(newStr);
  //在字符串中插入字符串
  String name1 = "XiaoMing";
  print("My name is ${name1}");
  //输出字符串的Unicode编码
  String str2 = "Dart";
  print(str2.codeUnitAt(0));
  print(str2.codeUnits);
  //去掉字符串前后空格
  String str3 = "\tDart is fun\n";
  print(str3.trimLeft());
  print(str3.trimRight());
  print(str3.trim());
  //字符串的大小写转换
  String str4 = "ABCdef";
  print(str4.toLowerCase());
  print(str4.toUpperCase());
  //拆分字符串
  String strA = "Hello world!";
  print(strA.split(" "));

  String strB = "abba";
  print(strB.split(new RegExp(r"b*")));
  //是否包含其他字符串
  String str5 = 'Dart strings';
  print(str5.contains('D'));
  print(str5.contains(new RegExp(r'[A-Z]')));
  print(str5.contains('D', 0));
  print(str5.contains(new RegExp(r'[A-Z]'), 0));
  //在字符串前后补占位符
  String str6 = "86";
  print(str6.padLeft(4, '0'));
  print(str6.padRight(4, '0'));
  //获取指定字符出现的位置
  String str7 = 'Dartisans';

  print(str7.indexOf('art'));
  print(str7.indexOf(new RegExp(r'[A-Z][a-z]')));

  print(str7.lastIndexOf('a'));
  print(str7.lastIndexOf(new RegExp(r'a(r|n)')));
  //替换字符串中所有匹配字符
  String str8 = "resume";
  print(str8.replaceAll(new RegExp(r'e'), 'é'));

  //(字符串变量)
  //StringBuffer
  StringBuffer xiaomingSaid = new StringBuffer();
  xiaomingSaid.write("All the world's a stage ... ");
  xiaomingSaid.write("And all the men and women merely players ...");
  print(xiaomingSaid);

  //部分属性
  StringBuffer strBuf = new StringBuffer();
  strBuf.write("Sow nothing, reap nothing.");
  // 返回字符串缓冲区的哈希码
  print(strBuf.hashCode);
  // 字符串缓冲区是否为空
  print(strBuf.isEmpty);
  // 字符串缓冲区是否不为空
  print(strBuf.isNotEmpty);
  // 返回字符串缓冲区累积内容的长度
  print(strBuf.length);
  // 返回对象运行时的类型
  print(strBuf.runtimeType);

  //常用方法
  StringBuffer strBuf1 = new StringBuffer();
  // 添加字符串到字符串缓冲区内
  strBuf1.write("Do one thing at a time, and do well.");
  // 返回字符串缓冲区的所有内容
  print(strBuf1.toString());
  // 清除字符串缓冲区
  strBuf1.clear();

  //-------------------------正则表达式-------------------------------
  //(部分属性)
  RegExp exp = new RegExp(r"(\w+)");
  // 返回正则表达式的哈希码
  print(exp.hashCode);
  // 正则表达式是否区分大小写
  print(exp.isCaseSensitive);
  // 正则表达式是否匹配多行
  print(exp.isMultiLine);
  // 返回源正则表达式字符串
  print(exp.pattern);
  // 返回对象运行时的类型
  print(exp.runtimeType);

  //(常用方法)
  exp = new RegExp(r"(\w+)");
  // 返回正则表达式匹配项的可迭代对象
  print(exp.allMatches("abc def ghi"));
  // 搜索并返回第一个匹配项，没有则返回null
  print(exp.firstMatch(""));
  // 正则表达式是否找到匹配项
  print(exp.hasMatch("as"));
  // 从第几个字符开始匹配正则表达式
  print(exp.matchAsPrefix("ab cd", 3));
  // 返回正则表达式的第一个匹配字符串
  print(exp.stringMatch("abc de"));
  // 返回正则表达式的字符串表示
  print(exp.toString());

  //(实用常用案例)
  //验证邮政编码的正则，返回是否匹配的布尔值
  RegExp postalcode = new RegExp(r'(\d{6})');
  print(postalcode.hasMatch("518000"));
  //验证手机号码的正则，以Iterable< Match >返回所有匹配项
  RegExp mobile = new RegExp(r"(0|86|17951)?(13[0-9]|15[0-35-9]|17[0678]|18[0-9]|14[57])[0-9]{8}");
  Iterable<Match> mobiles = mobile.allMatches("13812345678 12345678901 17012345678");
  for (Match m in mobiles) {
    String match = m.group(0);
    print(match);
  }
  //验证网址URL的正则，如果匹配成功以Match返回匹配项，否则返回null
  RegExp url = new RegExp(r"^((https|http|ftp|rtsp|mms)?:\/\/)[^\s]+");
  print(url.firstMatch("http://www.google.com"));
  //验证身份证号码的正则，返回第一个匹配的字符串
  RegExp identity = new RegExp(r"\d{17}[\d|x]|\d{15}");
  print(identity.stringMatch("My id number is 35082419931023527x"));

}
