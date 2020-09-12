// 泛型类
main(List<String> args) {
  Basic basic1 = Basic(1, 2);
  Basic basic2 = Basic(1.1, 2.2);
  Basic basic3 = Basic("a", "b");

  List<int> nums = [1, 2, 3];
  print(getValue(nums));

  List<String> strings = ["A", "B", "C"];
  print(getValue(strings));
}

// 即a, b均为传入参数的类型T
class Basic<T> {
  T a;
  T b;

  Basic(this.a, this.b);
}

// 根据传入类型返回对应类型值
T getValue<T>(List<T> list) {
  return list[0];
}
