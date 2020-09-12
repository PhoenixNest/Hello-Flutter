// 在Dart中所有的类都可以被当成接口进行使用，但Dart本身没有interface关键字
main(List<String> args) {
  final person = new Person();
  print(person.runtimeType);
  person.run();
}

class Person implements Run {
  @override
  void run() {
    print("Person Run...");
  }
}

class Run {
  void run() {
    print("Somthing Run...");
  }
}
