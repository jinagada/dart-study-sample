void futureTest() {
  print('futureTest start');
  Future<String> myFuture = Future(() {
    for (var i = 0; i < 10000000000; i++) {
      // Ten billion times. My PC takes about four seconds.
    }
    return 'futureTest I got lots of data! There are 10000000000';
  });
  myFuture.then((value) {
    print(value);
  }, onError: (e) {
    print(e);
  });
  print('do something');
}

void futureErrorTest() {
  print('futureErrorTest start');
  Future<String> myFuture = Future(() {
    for (var i = 0; i < 10000000000; i++) {
      // Ten billion times. My PC takes about four seconds.
    }
    return throw Exception('futureErrorTest Failed : data is to many');
  });
  myFuture.then((value) {
    print(value);
  }, onError: (e) {
    print(e);
  });
  print('do something');
}

Future<String> getData() {
  return Future(() {
    for (var i = 0; i < 10000000000; i++) {
      // Ten billion times. My PC takes about four seconds.
    }
    return 'getData I got lots of data! There are 10000000000';
  });
}

void futureTest2() {
  print('futureTest2 start');
  var myFuture = getData();
  myFuture.then((value) => print(value)).catchError((e) => print(e));
  print('do something');
}

void test(String data) {
  print(data);
  throw Exception('test Failed : test is empty');
}

void futureErrorTest2() {
  print('futureErrorTest2 start');
  var myFuture = getData();
  myFuture.then((value) => test(value)).catchError((e) => print(e));
  var myFuture2 = getData();
  myFuture2.then((value) {
    test(value);
  }, onError: (e) {
    print(e);
  });
  print('do something');
}

void syncTest() {
  print('syncTest start');
  var myFuture = getData();
  print('result : $myFuture');
  print('do something');
}

void asyncTest() async {
  print('asyncTest start');
  var myFuture = await getData();
  print('result : $myFuture');
  print('do something');
}

void main() {
  // futureTest();
  // futureErrorTest();
  // futureTest2();
  // futureErrorTest2();
  // syncTest();
  asyncTest();
}