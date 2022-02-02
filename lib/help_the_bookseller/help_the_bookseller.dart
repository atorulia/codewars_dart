String stockSummary(List<String> lstOfArt, List<String> lstOf1stLetter) {
  if (lstOfArt.isEmpty || lstOf1stLetter.isEmpty) return "";

  Map<String, int> stockList = {for (var element in lstOf1stLetter) element: 0};

  for (String art in lstOfArt) {
    String category = art[0];

    if (stockList.keys.contains(category)) {
      stockList.update(
          category,
          (value) =>
              stockList[category]! +
              int.tryParse(RegExp(r'[0-9]+$').firstMatch(art)!.group(0)!)!);
    }
  }

  List<String> stock = stockList.entries
      .map((entry) => '(${entry.key} : ${entry.value})')
      .toList();

  return stock.join(' - ');
}
