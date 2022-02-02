String spinWords(String str) {
  return List<String>.generate(
    str.split(' ').length,
    (index) => str.split(' ')[index].split('').length >= 5
        ? str.split(' ')[index].split('').reversed.join()
        : str.split(' ')[index],
  ).join(' ');
}
