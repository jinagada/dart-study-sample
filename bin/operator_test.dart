double divide(_a, _b) {
  return _a / _b;
}

int divideQuotient(_a, _b) {
  return _a ~/ _b;
}

int divideModulo(_a, _b) {
  return _a % _b;
}

class Person {
  var name = 'person';
}

class Employee extends Person {
  @override
  var name = 'employee';
}

class Student extends Person {
  @override
  var name = 'student';
}

class Employee2 {
  var name = 'employee2';
}

class Employee3 {
  var name = 'employee3';
  int age;

  void setAge(int age) {
    this.age = age;
  }
  void showInfo() {
    print('$name is $age.');
  }
}

void main() {
  var a = 11;
  var b = 5;
  print('$a / $b = ${divide(a, b)}');
  print('$a ~/ $b = ${divideQuotient(a, b)}');
  print('$a % $b = ${divideModulo(a, b)}');
  a = 10;
  b = 10;
  a = a + 5;
  b += 5;
  print('a = $a');
  print('b = $b');
  a = 10;
  b = 20;
  if (a == b) {
    print(' a == b');
  } else {
    print('a != b');
  }
  a = 0x03; // 0011
  b = 0x01; // 0001
  print('a = $a'); // 0011
  print('a << 1 = ${a << 1}'); // 0110
  print('a >> 1 = ${a >> 1}'); // 0001
  print('a & b = ${a & b}'); // 0011 & 0001 = 0001
  Employee employee = Employee();
  Student student = Student();
  Person person1 = employee as Person;
  Person person2 = student as Person;
  Person person = employee;
  print('person1.name = ${person1.name}');
  print('person2.name = ${person2.name}');
  print('(employee as Person).name = ${(employee as Person).name}');
  // print('(employee as Person).name = ${(employee as Student).name}'); // error
  if (employee is Employee) {
    print('employee is Employee');
  } else {
    print('employee is not Employee');
  }
  if (employee is Student) {
    print('employee is Student');
  } else {
    print('employee is not Student');
  }
  if (employee is Person) {
    print('employee is Person');
  } else {
    print('employee is not Person');
  }
  var employee2;
  print('employee2.name = ${(employee2 == null) ? null : employee2.name}');
  print('employee2.name = ${employee2?.name}');
  employee2 = Employee2();
  print('employee2.name = ${(employee == null) ? null : employee2.name}');
  print('employee2.name = ${employee2?.name}');
  print('employee2.name = ${employee2.name ?? 'assing employee2 name'}');
  employee2.name = null;
  print('employee2.name = ${employee2.name ?? 'assing employee2 name'}');
  Employee3 employee3 = Employee3()
  ..name = 'Kim'
  ..setAge(25)
  ..showInfo();
  employee3.name = 'Park';
  employee3.setAge(30);
  employee3.showInfo();
}