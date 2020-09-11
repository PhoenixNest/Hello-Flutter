// 函数
main(List<String> args) {
  print(sum(1, 2));
  printInfo("name", 18, 1.88);

  // 隐式可选参数传递
  print("---隐式可选参数传递---");
  printOptionalValue("name");
  printOptionalValue("name", 18);
  printOptionalValue("name", 18, 1.88);

  // 显式可选参数传递
  print("---显式可选参数传递---");
  printOptionalValue2("name");
  printOptionalValue2("name", age: 18);
  printOptionalValue2("name", age: 18, height: 1.88);
}

int sum(int num1, int num2) {
  return num1 + num2;
}

void printInfo(String name, int age, double height) {
  print("$name $age $height");
}

// 可选参数传递 - 隐式 - 使用[]框住可选参数即可
void printOptionalValue(String name, [int age, double height]) {
  print("$name $age $height");
}

// 可选参数传递 - 显式(命名可选参数) - 使用{}框住可选参数即可，在使用方法时需要指定可选参数名进行参数传递
void printOptionalValue2(String name, {int age, double height}) {
  print("$name $age $height");
}

// 带默认值的方法中，默认值只能赋值给可选参数
void printDefaultValue(String name, [int age = 18, double height = 1.88]) {
  print("$name $age $height");
}

void printDefaultValue2(String name, {int age = 18, double height = 1.88}) {
  print("$name $age $height");
}
