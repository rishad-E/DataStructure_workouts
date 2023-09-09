void main() {
  Reccursion rec = Reccursion();
  // List<int> array = [1, 3, 6, 7, 8, 10, 19];
  // int target = 19;
  // print(rec.search(array, target, 0, array.length - 1));

  print(rec.isFact(5));
  
}

class Reccursion {
  int search(List<int> array, target, start, end) {
    if (start > end) {
      return -1;
    }
    int m = start + (end - start) ~/ 2;
    if (array[m] == target) {
      return m;
    }
    if (target < array[m]) {
      return search(array, target, start, m - 1);
    }
    return search(array, target, m + 1, end);
  }

  int fact(num) {
    if (num == 0) {
      return 1;
    } else {
      return num * fact(num - 1);
    }
  }

  prime(num, [int divi = 2]) {
    if (num < 2) {
      return false;
    }
    if (num % divi == 0) {
      return false;
    }

    if (divi * divi > num) {
      return true;
    }
    return prime(num, divi + 1);
  }

  isFact(numb) {
    if (numb == 0) {
      return 1;
    } else {
      return numb * isFact(numb - 1);
    }
  }

  void fibanocci(int number) {
  //   List<int> res = [0,1];

  //   if (res.length == number) {
  //     // return res;
  //   }else{
  //     return fibanocci(res[number])
  //   }
  }
}



// int search(List<int> array, target, start, end) {
//   if (start > end) {
//     return -1;
//   }
//   int m = start + (end - start) ~/ 2;
//   if (array[m] == target) {
//     return m;
//   }
//   if (target < array[m]) {
//     return search(array, target, start, m - 1);
//   }
//   return search(array, target, m + 1, end);
// }
