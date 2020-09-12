// 类的继承
main(List<String> args) {
  final tiger = Tiger("China", 10);
  tiger.eating();
}

class Animal {
  int age;

  Animal(this.age);

  void eating() {
    print("Eating");
  }
}

class Tiger extends Animal {
  String type;

  // 当父类提供了一个有参构造函数时，子类需要使用以下写法对父类的构造函数进行重载
  Tiger(this.type, age) : super(age);

  @override
  void eating() {
    print("$type Eating");
  }
}
