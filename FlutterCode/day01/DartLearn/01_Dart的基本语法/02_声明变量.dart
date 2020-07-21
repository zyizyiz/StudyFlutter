main(List<String> args) {
  
  String name = "zyiz";

  var age = 20;

  // age = "345";
  age = 30;

  // final 常量
  final height = 1.82;
  // height = 2.00;

  // const 常量
  const address = "杭州市";
  // address = "eee";

  // final和const的区别
  // const必须赋值常量值（编译器确认）
  // final可以通过函数获取（运行期确定）
  // const data = DateTime.now();
  final data = DateTime.now();

  final p1 = Person("name");
  final p2 = Person("name");
  final isEqual = identical(p1, p2);
  print(isEqual);

  const p3 = Person("name");
  const p4 = Person("name");
  const p5 = Person("www");

  print(identical(p3, p4));
  print(identical(p4, p5));

}

class Person {

  final String name;

  const Person(this.name);
}