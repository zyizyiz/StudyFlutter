

main(List<String> args) {

  test((num1, num2) {
    return num1 + num2;
  });

  var demo1 = demo();
  print(demo1(20,30));
}

typedef Calculate = int Function(int a, int b);

void test(Calculate calc) {
  print(calc(2,3));
}

Calculate demo() {

  return (num1, num2) {
    return num1 * num2;
  };
}