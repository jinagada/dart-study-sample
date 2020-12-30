void streamTest1() {
  print('streamTest1 start');
  var stream = Stream.value(100).listen((dynamic x) => print('getData : $x'));
  print('do something');
}

void streamTest2() {
  print('streamTest2 start');
  var stream = Stream.periodic(Duration(seconds: 1), (x) => x).take(5);
  stream.listen(print);
  print('do something');
}

void main() {
  // streamTest1();
  streamTest2();
}