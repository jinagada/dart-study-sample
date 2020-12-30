abstract class Person {
  void eat();
}

class Developer extends Person {
  @override
  void eat() {
    print('Developer eat a meal');
  }
}

abstract class Person2 {
  void eat();
  void sleep() {
    print('Person must sleep');
  }
}

class Developer2 extends Person2 {
  @override
  void eat() {
    print('Developer eat a meal');
  }
  @override // 생략가능
  void sleep() {
    print('Developer must sleep');
  }
}

abstract class Person3 {
  void eat();
  void sleep() {
    print('Person must sleep');
  }
}

abstract class Junior {
  void work() {
    print('work hard');
  }
}

class Developer3 implements Person3, Junior {
  @override
  void eat() {
    print('Developer eat a meal');
  }
  @override
  void sleep() {
    print('Developer must sleep');
  }
  @override
  void work() {
    print('Junior developer works hard');
  }
}

void main() {
  Person person = Developer();
  person.eat();
  Person2 person2 = Developer2();
  person2.eat();
  person2.sleep();
  Developer3 developer3 = Developer3();
  developer3.eat();
  developer3.sleep();
  developer3.work();
}