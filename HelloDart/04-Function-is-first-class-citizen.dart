// 函数第一公民，函数式编程
// 函数既可以作为参数进行传递，也可以作为另一个函数的返回值

main(List<String> args) {
  testFunctionalValue(printMessage);

  // getfun为getFun方法的返回值，即printMessage
  // 通过对getfun添加函数括号的方法即可调用函数
  Function getfun = getFun();
  getfun();
}

void printMessage() {
  print("I'm a message");
}

// 将函数作为参数传递
void testFunctionalValue(Function fun) {
  fun();
}

// 将printMessage函数作为返回值返回
Function getFun() {
  return printMessage;
}
