import 'dart:io';

import 'package:learning_dart/learning_dart.dart' as learning_dart;

void main(List<String> arguments) {
  kthLargest([3, 5, 2, 4, 6, 8], 3);
  var array = [3, 0, 4, 8, 7];
  array.sort();
  print(array);
}

void kthLargest(List<int> array, int k) {
  var arrayLength = array.length;
  var swap;
  for (var i = 0; i < array.length; i++) {
    for (var j = i + 1; j < arrayLength; j++) {
      if (array[i] > array[j]) {
        swap = array[i];
        array[i] = array[j];
        array[j] = swap;
      }
    }
  }
  //check position
  for (var i = 0; i <= arrayLength; i++) {
    if (i == arrayLength - k) {
      print('The ${k}th largest element is ${array[i]}');
      break;
    }
  }
}

//leave
void swap(int x, int y) {
  int a;
  a = x;
  x = y;
  y = a;
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
