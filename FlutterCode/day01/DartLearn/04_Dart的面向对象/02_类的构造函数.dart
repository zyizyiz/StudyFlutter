main(List<String> args) {
  
  var p = Person.withNameAgeHeight("name", 10, 10.11);

  var p1 = Person.fromMap({
    "name":"xx",
    "age":10,
    "height":18.0
  });

  print(p);
  print(p1);

  // 知识点: Object和dynamic的区别
  // 父类应用指向子类对象
  // Object和dynamic
  // Object调用方法时, 编译时会报错
  // dynamic调用方法时, 编译时不报错, 但是运行时会存在安全隐患

  // Object obj = "name";
  // print(obj.substring(1));

  // dynamic obj1 = 111;
  // print(obj1.substring(1));
}

class Person {

  String name;

  int age;

  double height;

  Person(this.name, this.age);

  // 构造函数只能有一个
  // Person(this.name, this.age, this.height);

  Person.withNameAgeHeight(this.name,this.age,this.height);
  Person.fromMap(Map<String, dynamic> map) {
    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"];
  }

  @override
  String toString() {
    // TODO: implement toString
    return "$name $age $height";
  }
}