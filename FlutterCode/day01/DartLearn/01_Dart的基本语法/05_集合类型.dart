main(List<String> args) {
  var names = ["abc","bca",111];
  print(names);
  names.add("value");
  print(names);
  names = Set<dynamic>.from(names).toList();
  print(names);

  var movies = {"ddd","date"};
  print(movies);

  var info = {
    "name": "xx",
    "age": 11
  };
  print(info);
}