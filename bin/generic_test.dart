class Person {
  void eat() {
    print('Person eats a food');
  }
}

class Student extends Person {
  @override
  void eat() {
    print('Student eats a hambuger');
  }
}

class Manager<T extends Person> {
  void eat() {
    print('Manager eats a sandwich');
  }
}

class Dog {
  void eat() {
    print('Dog eats a dog food');
  }
}

class Person2 {
  T getName<T>(T param) {
    return param;
  }
}

void main() {
  var manager1 = Manager<Person>();
  manager1.eat();
  var manager2 = Manager<Student>();
  manager2.eat();
  var manager3 = Manager();
  manager3.eat();
  // var manager4 = Manager<Dog>(); // error
  var person2 = Person2();
  print(person2.getName<String>('Kim'));
}