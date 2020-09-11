// 集合

main(List<String> args) {
  // 1. List: [value1, value2, value3...]
  List<String> testArray = ["Aa", "Bb", "Cc", "Dd", "Aa", "Bb"];
  List<String> newArray = [];
  for (String string in testArray) {
    if (!newArray.contains(string)) {
      newArray.add(string);
    }
  }
  print(newArray);

  // 2. Set: {value1, value2, value3...}
  Set<int> nums = {1001, 1002, 1003};
  print(nums);
  // 应用: List 去重
  // Set.from将会返回一个Set工厂，使用List.from将其转换为对应List
  List<String> testArray2 = List.from(Set.from(testArray));
  print(testArray2);

  // 3. Map<key, value>
  Map<String, dynamic> newMap = {
    "name": "Peter",
    "age": 18,
    "height": 1.88,
  };
  print(newMap);
}
