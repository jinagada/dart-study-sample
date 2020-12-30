import 'dart:isolate';

void isolateTest(var m) {
  print('isolate no.$m');
}

void spawnTest() {
  Isolate.spawn(isolateTest, 1);
  Isolate.spawn(isolateTest, 2);
  Isolate.spawn(isolateTest, 3);
}

void foo(SendPort mainSendPort) {
  ReceivePort fooReceivePort = new ReceivePort();
  mainSendPort.send(fooReceivePort.sendPort);
  fooReceivePort.listen((message) {
    mainSendPort.send('received : $message');
  });
}

void sendReceiveTest() {
  int counter = 0;
  ReceivePort mainReceivePort = new ReceivePort();
  mainReceivePort.listen((message) {
    if (message is SendPort) {
      message.send(counter++);
    } else {
      print(message);
    }
  });
  for (var i = 0; i < 5; i++) {
    Isolate.spawn(foo, mainReceivePort.sendPort);
  }
}

void main() {
  spawnTest();
  sendReceiveTest();
}