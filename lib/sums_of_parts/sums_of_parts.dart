List<int> partsSums(List<int> ls) {
  int lsSum = ls.fold(0, (previousValue, element) => previousValue + element);

  return List<int>.generate(
    ls.length + 1,
    (index) => index > 0 ? lsSum -= ls[index - 1] : lsSum,
  );
}
