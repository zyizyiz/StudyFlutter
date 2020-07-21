main(List<String> args) {
  var str1 = "abc";
  var str2 = "abc";
  var str3 = """
  abc
  bca
  cab
  """;

  print(str1 == str2);
  print(str3.length);

  var name = "name";
  var age = 10;
  var height = 1.81;

  var msg1 = "my name is $name, age is $age, height is $height";
  var msg2 = "my name is $name, type is ${name.runtimeType}";
  
  print(msg1);
  print(msg2);
}