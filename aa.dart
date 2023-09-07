void main() {
  print(balancedString('[{}]'));
}
bool? balancedString(String a) {
  List<String> stack = [];
  for (var i = 0; i < a.length; i++) {
    if (a[i] == '{' || a[i] == '[' || a[i] == '(') {
      stack.add(a[i]);
    } else if (a[i] == '}' || a[i] == ']' || a[i] == ')') {
      if (stack.isEmpty) {
        return false;
      }
      String char = stack.removeLast();
      if (a[i] == '}' && char != '{' ||
          a[i] == ']' && char != '[' ||
          a[i] == ')' && char != '(') {
        return false;
      }
    }
  }
  return stack.isEmpty;
}
