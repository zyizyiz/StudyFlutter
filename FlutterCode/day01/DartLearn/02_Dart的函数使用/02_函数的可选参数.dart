main(List<String> args) {
  
  sayHello("eee");
  sayHello1("xxxx",22,1);
}

void sayHello(String name) {
  print(name);
}

void sayHello1(String name, [int age, double height = 2]) {
  print(name + "$age" + "$height");
}

