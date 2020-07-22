main(List<String> args) {
  final p = Person();

  p.name = "name";
  print(p.name);

  p.setName = "xxxx";
  print(p.getName);
}

class Person {
  String name;

  set setName(String name) => this.name = name;

  String get getName => name;
}
