/**
 * 抽象类
 * 特点：
 * 1.抽象类不能被实例化
 * 2.抽象类可实现类的多态
 * 3.抽象类中的抽象方法必须被子类实现，抽象类中的已被实现方法可不被子类重写
*/
main(List<String> args) {
  Circle circle = Circle(10);
  Rectangle rectangle = Rectangle(10, 2);
  print(circle.getArea());
  print(rectangle.getArea());
}

abstract class Shape {
  getArea();
}

class Circle extends Shape {
  double r;

  Circle(this.r);

  @override
  getArea() {
    return r * r * 3.14;
  }
}

class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  getArea() {
    return width * height;
  }
}
