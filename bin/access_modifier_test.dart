import 'package:sample_test/access_modifier_test.dart';

void main() {
  Person p = Person();
  p.eat();
  // p._sleep(); // error
}