main(List<String> args) {

  var p = Person("ddd");
}

class Person {
  final String name;
  final int age;

  Person(this.name,{int age}) : this.age = age ?? 10;
}