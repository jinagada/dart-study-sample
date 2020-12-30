void listTest() {
  List<dynamic> list1 = [1, 2.5, 'test'];
  dynamic list2 = [1, 2.5, 'test'];
  list2 = 1;
  var list3 = [1, 2.5, 'test'];
  // list3 = 1; // error
  for (var i = 0; i < list1.length; i++) {
    print(list1[i]);
  }
  List<dynamic> list = [1, 2.5, 'test'];
  print('index of test = ${list.indexOf('test')}');
  list.add('new');
  list.addAll([100, 'korea']);
  list.remove(2.5);
  list.removeAt(0);
  print('----- Start of list -----');
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print('----- End of list -----');
  print('first of list = ${list.first}');
  print('last of list = ${list.last}');
  print('reverse of list = ${list.reversed}');
  if (list.contains('new')) {
    print('There is new.');
  }
  if (list.isNotEmpty) {
    print('list is not empty');
  }
  list.clear();
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
  if (list.isEmpty) {
    print('list is empty');
  }
  list.add(1000);
  print('list has just one element = ${list.single}');
  list.addAll([100, 20, 1, 200, 5, 3, 30, 2000]);
  list.sort();
  print(list);
}

void setTest1() {
  Set<dynamic> testSet = {1, 2.5, 'test'};
  testSet.add(1);
  testSet.add(1);
  testSet.add(1);
  testSet.add(3);
  testSet.add(2);
  testSet.add('korea');
  testSet.add('korea');
  testSet.add('korea');
  print('----- Start of testSet -----');
  for (dynamic each in testSet) {
    print(each);
  }
  print('----- End of testSet -----');
}

void setTest2() {
  Set<dynamic> testSet = {1, 2.5, 'test'};
  // print('index of test = ${testSet.indexOf('test')}'); // error
  testSet.add('new');
  testSet.addAll({100, 'korea'});
  testSet.remove(2.5);
  // testSet.removeAt(0); // error
  print('----- Start of testSet -----');
  print(testSet);
  print('----- End of testSet -----');
  print('first of testSet = ${testSet.first}');
  print('last of testSet = ${testSet.last}');
  // print('reverse of testSet = ${testSet.reversed}'); // error
  if (testSet.contains('new')) {
    print('There is new.');
  }
  if (testSet.isNotEmpty) {
    print('testSet is not empty');
  }
  testSet.clear();
  print(testSet);
  if (testSet.isEmpty) {
    print('testSet is empty');
  }
  testSet.add(1000);
  print('testSet has just one element = ${testSet.single}');
  testSet.addAll([100, 20, 1, 200, 5, 3, 30, 2000]);
  // testSet.sort(); // error
  print(testSet);
}

void mapTest() {
  Map<int, String> testMap = {
    1: 'Red',
    2: 'Orange',
    3: 'Yellow'
  };
  testMap[4] = 'Green';
  print(testMap);
  print(testMap[1]);
  print(testMap[5]);
  testMap.update(1, (value) => 'NewRed', ifAbsent: () => 'NewColor');
  testMap.update(5, (value) => 'NewBlue', ifAbsent: () => 'NewColor');
  print(testMap[1]);
  print(testMap[5]);
  print(testMap);
}

void main() {
  listTest();
  setTest1();
  setTest2();
  mapTest();
}
