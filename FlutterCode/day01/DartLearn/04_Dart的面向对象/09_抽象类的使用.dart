main(List<String> args) {
  final s = Rectangle();
  print("${s.getArea()} ---- ${s.getInfo()}");
  print(s.runtimeType);

  final map = Map();

  print(map.runtimeType);
}

abstract class Shape {
  int getArea();

  String getInfo() {
    return "形状";
  }
}

class Rectangle extends Shape {
  @override
  int getArea() {
    // TODO: implement getArea
    return 100;
  }
}
