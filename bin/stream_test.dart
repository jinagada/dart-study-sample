import 'dart:async';

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

Future<String> getData() async {
  return Future.delayed(Duration(seconds: 3), () => 'after 3 seconds');
}

void streamTest3() {
  print('streamTest3 start');
  var stream = Stream.periodic(Duration(seconds: 1), (x) => x + 1)
      .take(5)
      .listen((x) => print('periodic : $x'));
  Stream.fromIterable(['one', '2.5', 'three', 4, 5])
      .listen((dynamic x) => print('fromIterable : $x'));
  Stream.fromFuture(getData()).listen((x) => print('fromFuture : $x'));
  print('do something');
}

void streamTest4() {
  print('streamTest4 start');
  StreamController streamCtrl = StreamController();
  streamCtrl.stream.listen((x) => print(x));
  streamCtrl.add(100);
  streamCtrl.add('test');
  streamCtrl.add(200);
  streamCtrl.add(300);
  streamCtrl.close();
  print('do something');
}

void streamTest5() {
  print('streamTest5 start');
  var stream = Stream.periodic(Duration(seconds: 1), (x) => x + 1).take(3);
  stream.listen(print);
  // stream.listen(print); // error
  StreamController streamCtrl = StreamController.broadcast();
  streamCtrl.stream.listen((x) => print('listen 1 = $x'));
  streamCtrl.stream.listen((x) => print('listen 2 = $x'));
  streamCtrl.add(100);
  streamCtrl.add(200);
  streamCtrl.add(300);
  streamCtrl.close();
  print('do something');
}

Stream<int> getData2() async* {
  for (var i = 0; i < 5; i++) {
    yield i;
  }
}

void yieldTest1() {
  print('yieldTest1 start');
  var stream = getData2();
  stream.listen((x) => print(x));
  print('do something');
}

Stream<String> requestData() async* {
  for (var i = 1; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield 'image0$i';
  }
}

void yieldTest2() {
  print('yieldTest2 start');
  var stream = requestData();
  stream.listen((String x) => print(x));
  print('do something');
}

void main() {
  // streamTest1();
  // streamTest2();
  // streamTest3();
  // streamTest4();
  // streamTest5();
  // yieldTest1();
  yieldTest2();
}