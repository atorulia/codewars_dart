// Best solution
// String rgb(int r, int g, int b) {
//   return [r, g, b]
//       .map((e) => e.clamp(0, 255).toInt().toRadixString(16).padLeft(2, '0'))
//       .join()
//       .toUpperCase();
// }

String rgb(int r, int g, int b) {
  return decimalToHexidecimal(r) +
      decimalToHexidecimal(g) +
      decimalToHexidecimal(b);
}

const Map<int, String> base = {
  0: '0',
  1: '1',
  2: '2',
  3: '3',
  4: '4',
  5: '5',
  6: '6',
  7: '7',
  8: '8',
  9: '9',
  10: 'A',
  11: 'B',
  12: 'C',
  13: 'D',
  14: 'E',
  15: 'F',
};

String decimalToHexidecimal(int decimal) {
  int tempDecimal = decimal;
  List<String?> hex = [];

  if (decimal > 255) return 'FF';
  if (decimal <= 0) return '00';

  while (tempDecimal > 0) {
    double reminder = tempDecimal / 16 - (tempDecimal / 16).truncate();

    hex.add(base[(reminder * 16).round()]);

    tempDecimal = tempDecimal ~/ 16;
  }

  if (hex.length < 2) {
    hex.add('0');
  }

  return hex.reversed.join();
}
