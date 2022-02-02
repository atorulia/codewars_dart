import 'dart:math' as math;

int binaryArrayToNumber(List<int> arr) {
  int number = 0;

  for (var i = 0; i < arr.length; i++) {
    int index = arr.length - 1 - i;
    int powerOfTwo = math.pow(2, index).toInt();

    number += arr[i] * powerOfTwo;
  }

  return number;
}
