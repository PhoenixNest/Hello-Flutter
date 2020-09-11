// 匿名函数
main(List<String> args) {
  List<String> array = ["Aa", "Bb", "Cc"];

  // 常规遍历
  // for (String string in array) {
  //   print(string);
  // }

  // 常规ForEach
  // array.forEach(printItem);

  // 匿名函数(完整写法)
  // array.forEach((element) {
  //   print(element);
  // });

  // 匿名函数(箭头写法)
  // array.forEach((element) => print(element));
}

void printItem(value) {
  print(value);
}
