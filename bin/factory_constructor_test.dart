class Student extends Person {
  Student() : super.init();
  @override
  String getType() {
    return 'Student';
  }
}

class Employee extends Person {
  Employee() : super.init();
  @override
  String getType() {
    return 'Employee';
  }
}

class Person {
  Person.init();
  factory Person(String type) {
    switch (type) {
      case 'Student':
        return Student();
      case 'Employee':
        return Employee();
      default:
        return null;
    }
  }
  String getType() {
    return 'Person';
  }
}

void main() {
  Person student = Person('Student');
  Person employee = Person('Employee');
  print('type = ${student.getType()}');
  print('type = ${employee.getType()}');
}