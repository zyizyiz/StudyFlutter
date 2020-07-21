
main(List<String> args) {
  
  var p = Person()..name = "name"
  ..run()..eat();
}

class Person {

  String name;

  void run() {
    print(name+"  running");
  }

  void eat() {
    print(name+"  eating");
  }
}