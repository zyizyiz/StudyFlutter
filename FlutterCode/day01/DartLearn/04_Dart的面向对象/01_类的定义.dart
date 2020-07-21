main(List<String> args) {
  var p = Person("name", 10);
  print(p.toString());
}

class Person {

  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() {
    // TODO: implement toString
    return "name : $name   age : $age";
  }
}