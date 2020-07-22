main(List<String> args) {
  final sm = SuperMan();
  sm.running();
  sm.flying();
}

mixin Runner {
  void running() {
    print("object running");
  }
}

mixin Flyer {
  void flying() {
    print("object flying");
  }
}

class Animal {
  void eating() {
    print("动物吃东西");
  }

  void running() {
    print("running");
  }
}

class SuperMan extends Animal with Runner, Flyer {}
