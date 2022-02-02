import 'package:codewars_dart/alternate_capitalization/alternate_capitalization.dart';
import "package:test/test.dart";

void main() {
  group("Fixed tests", () {
    test("Testing for abcdef",
        () => expect(capitalize("abcdef"), equals(['AbCdEf', 'aBcDeF'])));
    test("Testing for codewars",
        () => expect(capitalize("codewars"), equals(['CoDeWaRs', 'cOdEwArS'])));
    test(
        "Testing for abracadabra",
        () => expect(
            capitalize("abracadabra"), equals(['AbRaCaDaBrA', 'aBrAcAdAbRa'])));
    test(
        "Testing for codewarriors",
        () => expect(capitalize("codewarriors"),
            equals(['CoDeWaRrIoRs', 'cOdEwArRiOrS'])));
    test(
        "Testing for indexinglessons",
        () => expect(capitalize("indexinglessons"),
            equals(['InDeXiNgLeSsOnS', 'iNdExInGlEsSoNs'])));
    test(
        "Testing for codingisafunactivity",
        () => expect(capitalize("codingisafunactivity"),
            equals(['CoDiNgIsAfUnAcTiViTy', 'cOdInGiSaFuNaCtIvItY'])));
  });
}
