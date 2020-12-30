String getName() {
  return 'Kim';
}

int add(int a, int b) {
  return a + b;
}

int sub(a, b) {
  return a - b;
}

int multi(int a, int b) {
  return a * b;
}

String getAddress1(String city, {String district, String zipCode = '111222'}) {
  return '$city시 $district구 $zipCode';
}

String getAddress2(String city, [String district = '강남', String zipCode = '111222']) {
  return '$city시 $district구 $zipCode';
}

dynamic multi2 = (_a, _b) {
  return _a * _b;
};

int sub2(_a, _b) => _a - _b;

void main() {
  var a = 10;
  var b = 5;
  var name = getName();
  print('Name is $name');
  print('$a + $b = ${add(a, b)}');
  print('$a - $b = ${sub(a, b)}');
  print('${a + b} * ${a - b} = ${multi(add(a, b), sub(a, b))}');
  print('${getAddress1('서울', district: '강남')}');
  print('${getAddress1('서울', district: '강남', zipCode: '012345')}');
  // print('${getAddress(district: '강남', zipCode: '012345')}');
  print('${getAddress2('서울')}');
  print('${getAddress2('서울', '서초')}');
  print('${getAddress2('서울', '123', '서초')}');
  print('$a + $b = ${add(a, b)}');
  print('$a * $b = ${multi2(a, b)}');
  print('$a - $b = ${sub2(a, b)}');
}