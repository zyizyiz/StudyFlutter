main(List<String> args) {
  Future.value("hahahaha").then((value) => print(value));

  Future.error("error").catchError((err) => print(err));

  Future<String>.delayed(Duration(seconds: 3), () {
    return "Hello Flutter";
  }).then((value) {
    print(value);
    return "Hello World";
  }).then((value) {
    print(value);
  });
}
