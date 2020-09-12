// 特殊运算符
main(List<String> args) {
  // ??=
  // var name = "Name";
  var name = null;

  // 如果name已经被赋值，那么 ??= 运算符不被执行
  // 如果name为null，则 ??= 会将newName赋值给name
  name ??= "newName";

  print(name);

  // ??
  // var message = "Message";
  var message = null;
  // 当message为null时，?? 会赋予result默认值"i am a Message"
  var result = message ?? "i am a Message";

  print(result);
}
