class Person {
  String _name;
  String get name => _name;
  set name(String name) => _name = name;
}

class Person2 {
  String _name;
  String get hello => _name;
  set setName(String name) => _name = name;
}

class Person3 {
  String _name;
  String get name => (_name == null) ? 'Lee' : _name;
  set name(String name) => (name == null) ? _name = 'Park' : _name = name;
}

void main() {
  Person person = Person();
  person.name = 'Kim';
  print(person.name);
  Person2 person2 = Person2();
  person2.setName = 'Kim';
  print(person2.hello);
  Person3 person3 = Person3();
  print(person3.name);
  person3.name = null;
  print(person3.name);
}