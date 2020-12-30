class Person {
  Person() {
    print('This is Person Constructor!');
  }
  Person.init() {
    print('This is Person.init Constructor!');
  }
}

class Student extends Person {
  Student() {
    print('This is Student Constructor!');
  }
}

class Person2 {
  String name;
  int age;
  Person2() {
    print('This is Person2 Constructor!');
  }
  // 아래는 오류
  // Person2(String name) {
  //   print('This is Person($name) Constructor!');
  // }
  Person2.init(String name) {
    print('This is Person2($name) Constructor!');
  }
}

class Person3 {
  String name;
  int age;
  Person3.init(String name) {
    print('This is Person3($name) Constructor!');
  }
}

class Person4 {
  String name;
  int age;
  Person4() {
    print('This is Person4() Constructor!');
  }
  Person4.init(String name) {
    print('This is Person4($name) Constructor!');
  }
}

class Person5 {
  String name;
  int age;
  Person5() : name = 'Kim', age = 10 {
    print('This is Person5($name : $age) Constructor!');
  }
}

class Person6 {
  String name;
  int age;
  Person6(this.name, this.age) {
    print('This is Person6($name, $age) Constructor!');
  }
  Person6.initName(String name) : this(name, 20);
}

class Person7 {
  final String name;
  final num age;
  const Person7(this.name, this.age);
}

void main() {
  var student = Student();
  var person = Person();
  var init = Person.init();
  var person2 = Person2();
  var kim = Person2.init('Kim');
  var kim2 = Person3.init('Kim');
  // var person3 = Person3(); // error
  var person4 = Person4();
  var kim3 = Person4.init('Kim');
  var person5 = Person5();
  var person6 = Person6.initName('Kim');
  Person7 person7_1 = const Person7('Kim', 20);
  Person7 person7_2 = const Person7('Kim', 20);
  Person7 person7_3 = new Person7('Kim', 20);
  Person7 person7_4 = new Person7('Kim', 20);
  print(identical(person7_1, person7_2));
  print(identical(person7_2, person7_3));
  print(identical(person7_3, person7_4));
}