import 'dart:io';

main(List<String> args) {
  print("main start");

  getData().then((value) {}).catchError((err) {});

  print("main end");
}

Future getData() async {
  var res = await getNetworkData("dddd");
  print(res);

  var res2 = await getNetworkData(res);
  print(res2);

  var res3 = await getNetworkData(res2);

  return res3;
}

Future getNetworkData(String arg) {
  return Future(() {
    sleep(Duration(seconds: 3));
    return "Hello World" + arg;
  });
}
