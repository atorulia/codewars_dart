import 'package:codewars_dart/valid_parentheses/valid_parentheses.dart';
import "package:test/test.dart";

void tester(String str, bool exp) => test(
    "Testing for '$str'", () => expect(validParentheses(str), equals(exp)));
void main() {
  group('Basic tests', () {
    tester("()()((()", false);
    tester("()", true);
    tester("()()", true);
    tester("(())", true);
    tester(")", false);
    tester("", true);
    tester("())", false);
    tester("((((()))))", true);
    tester("()))", false);
    tester("()()()())", false);
    tester("(()()()())(())", true);
    tester("((((((((", false);
    tester("(())((()((()))))", true);
    tester("())(", false);
    tester(")()()()(", false);
    tester("(()()))(", false);
    tester(")()(", false);
    tester("())(()", false);
  });
}
