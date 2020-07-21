main(List<String> args) {
  
  test(bar);

  test((){
    print("匿名函数被调用");
    return 10;
  });
}

void test(Function foo) {
  print(foo());
}

void bar() {
  print("bar函数被调用");
}