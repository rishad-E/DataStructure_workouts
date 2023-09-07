void main() {
  StringSample obj = StringSample();
  // obj.palindromeM();
  obj.findTheDifference('abcdef', 'abcde');
}

class StringSample {
  void reverseString() {
    String name = "rishad";
    print(name.split('').reversed.join());
  }

  void remove() {
    String name = 'rishad';
    List<String> s = name.split('');
    s.remove('a');
    print(s.join());
  }

  void palindrome() {
    String name = 'malayalam';

    String reve = name.split('').reversed.join();
    if (name == reve) {
      print("palindrome");
    } else {
      print("not");
    }
  }

  void palindromeM() {
    String name = 'malayalam';
    int count = 0;
    for (var i = 0; i < name.length; i++) {
      if (name[i] != name[name.length - 1 - i]) {
        count = 1;
        break;
      }
    }
    if (count == 1) {
      print("not palindrome");
    } else {
      print(" pali");
    }
  }

  findTheDifference(String s, String t) {
    for (var i = 0; i < s.length; i++) {
      
    }
  }
}
