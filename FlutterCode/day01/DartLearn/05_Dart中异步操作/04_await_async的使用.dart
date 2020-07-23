import 'dart:io';

main(List<String> args) {
  print("main start");

  var result = getNetworkData().then((value) {
    print(value);
  });

  print("main continue");
  // print("eeeee" + result);
  print("main end");
  // sleep(Duration(seconds: 10));
  print("main end 11");
}

Future getNetworkData() async {
  await sleep(Duration(seconds: 3));
  return "Hello World";
}
