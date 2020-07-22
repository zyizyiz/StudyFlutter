main(List<String> args) {
  final p1 = Person.withName("name");
  final p2 = Person.withName("name");
  print(identical(p1, p2));
}

class Person {
  String name;
  String color;

  static final Map<String, Person> _nameCache = {};
  static final Map<String, Person> _colorCache = {};

  factory Person.withName(String name) {
    if (_nameCache.containsKey(name)) {
      return _nameCache[name];
    } else {
      final p = Person(name, "default");
      _nameCache[name] = p;
      return p;
    }
  }

  factory Person.withColor(String color) {
    if (_colorCache.containsKey(color)) {
      return _colorCache[color];
    } else {
      final p = Person("default", color);
      _colorCache[color] = p;
      return p;
    }
  }

  Person(this.name, this.color);
}
