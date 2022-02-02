List<String> capitalize(String x) {
  return [
    List<String>.generate(
      x.length,
      (index) => index % 2 != 0
          ? x.split('')[index].toUpperCase()
          : x.split('')[index],
    ).toList().join(),
    List<String>.generate(
      x.length,
      (index) => index % 2 == 0
          ? x.split('')[index].toUpperCase()
          : x.split('')[index],
    ).toList().join(),
  ];
}
