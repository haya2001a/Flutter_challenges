bool isParenthesesBalanced(String input) {
  List<String> stack = [];

  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    if (char == '(') {
      // Push opening parenthesis to the stack
      stack.add(char);
    } else if (char == ')') {
      // Check if there's a close parenthesis?
      if (stack.isEmpty) {
        return false; 
      }
      stack.removeLast(); 
    }
  }

  // If the stack empty it is balanced 
  return stack.isEmpty;
}

void main() {
  print(isParenthesesBalanced("(())")); // balanced
  print(isParenthesesBalanced("(()"));  // non
  print(isParenthesesBalanced(")("));   // non
  print(isParenthesesBalanced("(a+b) * (c-d)")); // balanced
}
