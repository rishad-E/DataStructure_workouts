void main() {
  ArrayQ obj = ArrayQ();
  obj.sortMan();
}

class ArrayQ {
  void palindrome() {
    String name = 'amema';
    String reve = name.split('').reversed.join('');

    if (reve == name) {
      print("is palindrome");
    } else {
      print("no palindrome");
    }
  }

  void power() {
    List numbers = [5, 7, 2, 6];
    List powers = [];

    for (var i = 0; i < numbers.length; i++) {
      for (var j = i + 1; j <= i + 1; j++) {
        powers.add(numbers[i] * j);
      }
    }
    print(powers);
  }

  void largestAndSmallest() {
    List<int> arr = [5, 7, 2, 9, 1];
    int smallest = arr[0];
    int largest = arr[0];

    for (var i = 0; i < arr.length; i++) {
      if (arr[i] < smallest) {
        smallest = arr[i];
      }
      if (arr[i] > largest) {
        largest = arr[i];
      }
    }

    print("largest $largest");
    print("smallest $smallest");
  }

  void seconLarge() {
    List<int> arr = [5, 7, 2, 9, 1];
    int lar = arr[0];
    int scndL = arr[0];

    for (var i = 0; i < arr.length; i++) {
      if (arr[i] > lar) {
        scndL = lar;
        lar = arr[i];
      } else if (arr[i] < lar && arr[i] > scndL) {
        scndL = arr[i];
      }
    }
    print("scn lar $scndL");
  }

  void descenting() {
    List<int> arr = [5, 7, 2, 9, 1];

    arr.sort(
      (a, b) => b.compareTo(a),
    );
    print(arr);
  }

  void sortMan() {
    List<int> arr = [5, 7, 2, 9, 1];
    int temp;
    for (var i = 0; i < arr.length; i++) {
      for (var j = i + 1; j < arr.length; j++) {
        if (arr[i]>arr[j]) {
          temp = arr[i];
          arr[i]= arr[j];
          arr[j] = temp;
        }
      }
    }
    print(arr);
  }

}
