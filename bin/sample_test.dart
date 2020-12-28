import 'package:sample_test/sample_test.dart' as sample_test;
import 'package:sample_test/sample_test.dart' show TestA;

int set(int a, int b) {
  return a + b;
}

int yield(int a, int b) {
  return a + b;
}

void test() async {
  // var await = 10; // var error
}

void main(List<String> arguments) {
  print('Hello world: ${sample_test.calculate()}!');
  dynamic name = 'Kim';
  print('String : ${name}');
  name = 100;
  print('int : ${name}');
  print('set(10, 5) : ${set(10, 5)}');
  var test = TestA();
  test.show();
  var await = 11;
  print('Function yield(11, 12) : ${yield(await, 12)}');
}
