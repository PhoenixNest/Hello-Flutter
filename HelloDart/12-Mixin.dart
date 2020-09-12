// 混入模式
// 当一个类希望直接复用之前的原有实现方案可使用
main(List<String> args) {
  School school = School();
  school.study();
  school.teach();
}

mixin Student {
  study() {
    print("Student study");
  }
}

mixin Teacher {
  teach() {
    print("Teacher teach");
  }
}

class School with Teacher, Student {}
