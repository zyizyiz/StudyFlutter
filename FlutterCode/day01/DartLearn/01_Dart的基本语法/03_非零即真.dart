main(List<String> arg) {
    var flag = "abc";
    /// 会出错，并不是不是空值就是true
    // if (flag) {
    if (flag.isNotEmpty) {
      print("执行代码");
    }
}