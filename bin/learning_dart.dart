import 'dart:io';

import 'package:learning_dart/learning_dart.dart' as learning_dart;

void main(List<String> arguments) {
  print('Hello world: ${learning_dart.calculate()}!');
  swap(1, 2);
}

void swap(int x, int y) {
  int a;
  print('Before swap ${x} before ${y}');
  a = x;
  x = y;
  y = a;
  print('After swap ${x} before ${y}');
  print(factorial(5));
  print(power1(-2, -7));
}

int factorial(int num) {
  if (num == 0 || num == 1) {
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}

int power1(int num, int power) {
  if (num == 0) {
    print("Zero is invalid");
    exit(0);
  }
  if (power == 1) {
    return num;
  }
  if (num != 0 && power == 0) {
    return 1;
  } else {
    return num * power1(num, power - 1);
  }
}
