bool validParentheses(String braces) {
  int counter = 0;

  for (String parentheses in braces.split('')) {
    if (parentheses == '(') {
      counter++;
    } else if (parentheses == ')') {
      counter -= 1;
    }

    if (counter < 0) return false;
  }

  return counter == 0;
}
