void main() {
  ArrayQuestions obj = ArrayQuestions();
//  List<int> arr = [5, 7, 8, 9, 10, 11];
  // obj.duplicate();
//  int found = obj.binarySearch(arr,1);
//   // obj.freee();
//  if (found != -1) {
//    print("found");
//    print(found);
//  }else{
//   print("not");
//   // print(found);
//  }
  // obj.freee();
//   // obj.insertion();
//   // obj.mergee();
// obj.merge();
  obj.deleteDup();
}

class ArrayQuestions {
  void merge() {
    List arr = [5, 7, 2, 9, 1];
    List arr2 = [6, 8, 9, 2, 4];
    arr.addAll(arr2);
    List newA = [];
    newA = [...arr, ...arr2];
    newA.sort();
    print(arr);
  }

  void frequency() {
    List<int> arr = [5, 1, 2, 5, 1];
    Map<int, int> frequency = {};
    for (int i in arr) {
      if (frequency.containsKey(i)) {
        frequency[i] = frequency[i]! + 1;
      } else {
        frequency[i] = 1;
      }
    }
    print(frequency);
  }

  void duplicate() {
    List arr = [1, 2, 2, 1, 3, 1, 3];
    List<int> newA = Set<int>.from(arr).toList();

    for (var i = 0; i < arr.length; i++) {
      for (var j = i + 1; j < arr.length; j++) {
        if (arr[i] == arr[j]) {
          // arr.removeAt(j);
          // for (var k = i; k < arr.length; k++) {
          //   arr[k]=arr[k+1];
          // }
        }
      }
    }
    print(newA);
  }

  int binarySearch(List<int> arr, target) {
    // List<int> arr = [5, 7, 8, 9, 10, 11];
    int low = 0;
    int high = arr.length - 1;
    while (low <= high) {
      int mid = low + high ~/ 2;

      if (arr[mid] == target) {
        return mid;
      } else if (arr[mid] < target) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }
    return -1;
  }

  void freee() {
    List arr = [1, 2, 2, 1, 3, 1, 3, 3, 5];

    for (var i = 0; i < arr.length; i++) {
      int count = 1;
      for (var j = i + 1; j < arr.length; j++) {
        if (arr[i] == arr[j] && arr[j] != null) {
          count++;
          arr[j] = null;
        }
      }
      if (count > 1) {
        print("${arr[i]} repeated $count this many times");
      }
    }
  }

  void deleteDup() {
    List arr = [1, 2, 2, 1, 3, 3, 1, 3];
    for (var i = 0; i < arr.length; i++) {
      for (var j = i + 1; j < arr.length; j++) {
        if (arr[i] == arr[j]) {
          arr.removeAt(j);
        }
      }
    }
    print(arr);
  }

  void insertion() {
    List<int> list = [1, 2, 3, 4];
    int index = 2;
    int element = 5;
    // list.insert(2, 5);
    // Shift elements to the right to make space for the new element
    // for (int i = list.length - 1; i >= index; i--) {
    //   list[i + 1] = list[i];
    // }

    // Insert the new element at the specified index
    // list[index] = list.add(element);
    list.insert(index, element);

    print(list); // Output: [1, 2, 5, 3, 4]
  }

  void mergee() {
    List arr = [1, 2, 2, 1, 3, 1, 3, 3];
    for (var i = 0; i < arr.length; i++) {
      int count = 1;
      for (var j = i + 1; j < arr.length; j++) {
        if (arr[i] == arr[j] && arr[j] != null) {
          count++;
          arr[j] = null;
        }
      }
      if (count > 1) {
        print("${arr[i]} repeated $count this many times");
      }
    }
  }

// void main() {
//   List<int>arr =[3,4,5,8,9,11];
//   print(check(arr));
// }

  List<int>? check(List<int> arr) {
    int k = arr[0];
    List<int> res = [];
    for (var i = 0; i < arr.length; i++) {
      if (arr[i] != k) {
        while (arr[i] != k) {
          res.add(k);
          k++;
        }
      }
      k++;
    }
    return res;
  }
}
