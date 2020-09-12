// 类构造函数
main(List<String> args) {
  final student = Student("Peter", 18);
  student.Learn();

  Map<String, dynamic> infoMap = {"name": "Peter", "age": 21};
  final student2 = Student.fromMap(infoMap);
  student2.Learn();

  final area = Area(10, 20);
  print(area.toString());
}

class Student {
  String name;
  int age;

  //* Dart不支持重载
  //* 构造写法一：将参数变成可选参数 - 使用[], {}将参数转变为可选参数，注意使用{}时需要加上参数名
  // Student([String name, int age]) {
  //   this.name = name;
  //   this.age = age;
  // }

  //* 构造写法二：语法糖，等价于写法一
  Student([this.name, this.age]);

  //* 构造写法三：命名构造函数，.之后的名称可自定义
  // Student.xxx() {}
  Student.fromMap(Map<String, dynamic> map) {
    this.name = map["name"];
    this.age = map["age"];
  }

  void Learn() {
    print("${this.name} loves learning Flutter");
  }
}

class Area {
  int a, b;
  int result;

  //* 构造写法四：初始化列表，当类在初始化并需要进行某些简单操作时可使用
  Area(this.a, this.b) : this.result = a * b;

  // toString方法可用于打印类属性
  @override
  String toString() {
    return "长:$a, 宽:$b, 面积:$result";
  }
}
