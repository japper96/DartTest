
main() {
  //创建时间对象，获取当前时间
  DateTime now = new DateTime.now();
  print("当前时间：$now");

  //获取指定的时间
  DateTime victoryDay = new DateTime(1945,9,9);
  print("日本于${victoryDay.year}年${victoryDay.month}月${victoryDay.day}日在南京签署中国战区投降书");

  //时间字符串转换
  DateTime moonLanding = DateTime.parse("1969-07-20");
  print(moonLanding);

  //时间跨度
  //计算时间跨度，例如计算2天56时14分的跨度
  Duration timeRemaining = new Duration(days:2, hours:56, minutes:14);
  print(timeRemaining);


}

