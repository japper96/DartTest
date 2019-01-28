
import 'dart:io' as Platform;

main() {
  //当前系统的命令行，例如Windoes命令行Nslookup www.baidu.com
  Platform.Process.run('Nslookup', ['www.baidu.com']).then((Platform.ProcessResult results) {
    print(results.stdout);
  });

  //运行一个进程，例如打开记事本
  Platform.Process.run('notepad', ['']).then((Platform.ProcessResult results) {
    print(results.stdout);
  });


  //运行一个进程
  Platform.Process.start('Nslookup', ['www.baidu.com']).then((process) {
    //获取进程的退出代码
    process.exitCode.then((exitCode) {
      print('退出代码： $exitCode');
    });
  });


  //获取当前进程的环境变量
  Map<String, String> envVars = Platform.Platform.environment;
  print(envVars['PATH'].replaceAll(';', '\n'));

//第一种方法：获取操作系统的字符串
  String os = Platform.Platform.operatingSystem;
  print('你使用的是 $os');
  //第二种方法：检查操作系统
                     print("你使用的是 ");
                     if (Platform.Platform.isMacOS) {
                       print('MacOS');
                     } else if (Platform.Platform.isAndroid) {
                       print('Android');
                     } else if (Platform.Platform.isLinux) {
                       print('Linux');
  } else if (Platform.Platform.isWindows) {
    print('Windows');
  } else {
    print('其他系统');
  }


  //获取正在运行的脚本的URI
  var uri =Platform.Platform.script;
  print(uri);
  //将URI转换成路径
  var path = uri.toFilePath();
  print(path);
}