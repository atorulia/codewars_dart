import 'package:codewars_dart/twice_linear/twice_linear.dart';
import "package:test/test.dart";

void main() {
  testing(int n, int exp) =>
      test("Testing for $n", () => expect(dblLinear(n), equals(exp)));
  group("fixed tests", () {
    testing(10, 22);
    testing(20, 57);
    testing(30, 91);
    testing(50, 175);
    testing(100, 447);
  });
}
