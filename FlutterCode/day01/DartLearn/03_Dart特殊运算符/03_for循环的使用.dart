main(List<String> args) {
  
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  var names = ["name","ssss","ninon"];
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }

  print("------------");
  for (var name in names) {
    print(name);
  }
}