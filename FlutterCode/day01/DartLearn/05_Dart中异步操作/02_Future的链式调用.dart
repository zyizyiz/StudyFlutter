import 'dart:io';

main(List<String> args) {
  print("main start");

  Future(() {
    // 1.发送第一次请求
    sleep(Duration(seconds: 3));
    return "第一次的结果";
  })
      .then((value) {
        print(value);
        sleep(Duration(seconds: 2));
        throw Exception("第二次异常");
      })
      .then((value) {
        print(value);
        sleep(Duration(seconds: 1));
        return "第三次的结果";
      })
      .then((value) => print(value))
      .catchError((err) {
        print(err);
      });

  print("main end");
}
