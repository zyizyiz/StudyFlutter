import 'dart:io';

main(List<String> args) {
  print("main start");

  var future = getNetworkData();

  future.then((value) => print(value)).catchError((err) {
    print(err);
  }).whenComplete(() => print("finish"));

  print("main end");
}

Future<String> getNetworkData() {
  return Future<String>(() {
    sleep(Duration(seconds: 3));
    return "Hello World";
    // throw Exception("error");
  });
}
