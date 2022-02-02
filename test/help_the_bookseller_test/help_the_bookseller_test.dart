import 'package:codewars_dart/help_the_bookseller/help_the_bookseller.dart';
import "package:test/test.dart";

void main() {
  dotest(List<String> lstOfArt, lstOf1stLetter, String exp) {
    test("Testing for: \n$lstOfArt\n$lstOf1stLetter",
        () => expect(stockSummary(lstOfArt, lstOf1stLetter), equals(exp)));
  }

  group("fixed tests", () {
    var b = ["BBAR 150", "CDXE 515", "BKWR 250", "BTSQ 890", "DRTY 600"];
    var c = ["A", "B", "C", "D"];
    dotest(b, c, "(A : 0) - (B : 1290) - (C : 515) - (D : 600)");

    b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"];
    c = ["A", "B"];
    dotest(b, c, "(A : 200) - (B : 1140)");
  });
}
