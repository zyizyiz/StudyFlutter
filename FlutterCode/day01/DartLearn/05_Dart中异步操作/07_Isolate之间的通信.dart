import 'dart:isolate';

main(List<String> args) async {
  print("main start");

  ReceivePort receivePort = ReceivePort();

  Isolate isolate = await Isolate.spawn<SendPort>(foo, receivePort.sendPort);

  receivePort.listen((message) {
    print(message);
    receivePort.close();
    isolate.kill();
  });

  print("main end");
}

void foo(SendPort send) {
  return send.send("Hello World");
}
