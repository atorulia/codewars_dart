void decomposeRecursion(
    List<String> unitDenominator, int numerator, int denominator) {
  if (numerator == denominator) {
    unitDenominator.add('1');
    return;
  }

  if (denominator == 0 || numerator == 0) return;

  if (denominator % numerator == 0) {
    unitDenominator.add('1/${(denominator ~/ numerator)}');
    return;
  }

  if (numerator % denominator == 0) {
    unitDenominator.add((numerator ~/ denominator).toString());
    return;
  }

  if (numerator > denominator) {
    unitDenominator.add((numerator ~/ denominator).toString());
    decomposeRecursion(unitDenominator, numerator % denominator, denominator);
    return;
  }

  var number = denominator ~/ numerator + 1;

  unitDenominator.add('1/$number');
  decomposeRecursion(
      unitDenominator, numerator * number - denominator, denominator * number);
}

String decompose(String nrStr, drStr) {
  List<String> unitDenominator = [];

  decomposeRecursion(unitDenominator, int.parse(nrStr), int.parse(drStr));

  return unitDenominator.toString();
}
