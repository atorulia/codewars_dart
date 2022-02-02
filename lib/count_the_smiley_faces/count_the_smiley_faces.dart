int countSmileys(List<String> arr) {
  var totalSmiles = arr
      .where((smile) => (RegExp(r'^[:;]{1}[-~]?[D)]{1}$').hasMatch(smile)))
      .length;

  return totalSmiles;
}
