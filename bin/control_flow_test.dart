void main() {
  var a = 10;
  var b = 20;
  if (a < b) {
    print('$a < $b');
  } else {
    print('$a >= $b');
  }
  // assert(a > b); // 오류발생
  var port = [22, 25, 53];
  switch (port[0]) {
    case 22:
      print('SSH : 22');
      break;
    case 25:
      print('SMTP : 25');
      break;
    case 54:
      print('DNS : 53');
      break;
  }
  var numbers = {};
  for (var i = 0; i < 5; i++) {
    numbers[i] = i;
    print('[for] numbers[$i] = ${numbers[i]}');
  }
  var i = 0;
  while (i < 5) {
    print('[while] numbers[$i] = ${numbers[i]}');
    i++;
  }
  i = 0;
  do {
    print('[do-while] numbers[$i] = ${numbers[i]}');
    i++;
  } while (i < 5);
}