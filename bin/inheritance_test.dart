class Person {
  String name;
  void setName(String name) {
    this.name = name;
  }
  String getName() {
    return name;
  }
  void showInfo() {
    print('name is $name');
  }
}

class Student extends Person {
  int studentID;
  @override
  void showInfo() {
    print('name is ${super.getName()} and id is $studentID');
  }
}

void main() {
  Student student = Student();
  student.studentID = 2020;
  student.setName('Kim');
  student.showInfo();
}