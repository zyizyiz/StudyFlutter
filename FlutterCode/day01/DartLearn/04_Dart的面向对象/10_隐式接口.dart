main(List<String> args) {}

class Runner {
  void running() {}
}

class Flyer {
  void flying() {}
}

class Animal {
  void eating() {
    print("动物吃东西");
  }

  void running() {
    print("running");
  }
}

class SuperMan extends Animal implements Runner, Flyer {
  @override
  void flying() {}
}
