void main() {
  print(isBalanced('([])'));
}

bool isBalanced(String input) {
  List<String> stack = [];
  for (var i = 0; i < input.length; i++) {
    String char = input[i];

    if (char == '(' || char == '[' || char == '{') {
      stack.add(char);
    } else if (char == ')' || char == ']' || char == '}') {
      if (stack.isEmpty) {
        return false;
      }
      String lastone = stack.removeLast();

      if ((char == ')' && lastone != '(') ||
          (char == ']' && lastone != '[') ||
          (char == '{' && lastone != '}')) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}

void anagram(String first,String second){
if (first.length != second.length) {
    // return false;
  }
  
}