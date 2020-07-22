main(List<String> args) {
  Person.courseTime = "8:00";
  print(Person.courseTime);

  Person.gotoCourse();
}

class Person {
  String name;

  static String courseTime;

  void eating() => print("eating");

  static void gotoCourse() => print("去上课");
}
