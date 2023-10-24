void main() {
  // print(balancedString('[{}]'));
  print(test(123));
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

int test(int n) {
  int sum = 0;
  int m;
  while (n > 0) {
    m = n % 10;
    sum = sum + m;
    n = n ~/ 10;
  }
  return sum;
}
