// 类和对象
main(List<String> args) {
  final student = new Student();

  // 在dart中，创建一个类时，可省略new
  final student2 = Student();

  student.name = "Peter";
  student.age = 21;
  student.Learn();

  // 级联运算符
  student2
    ..name = "Chen"
    ..age = 20
    ..Learn();
}

class Student {
  String name;
  int age;

  void Learn() {
    print("${this.name} loves learning Flutter");
  }
}
