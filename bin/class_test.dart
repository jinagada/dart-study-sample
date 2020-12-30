class Person {
  String name;
  int age;
  String getName() {
    return name;
  }
}

void main() {
  var student = new Person();
  var teacher = Person();
  Person person = Person();
  student.name = 'Kim';
  teacher.name = 'Park';
  person.name = 'Unknown';
  print('student name = ${student.getName()}');
  print('teacher name = ${teacher.getName()}');
  print('person name = ${person.getName()}');
}