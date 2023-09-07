class Solution {
  List<int> n = [];
  List<int> twoSum(List<int> nums, int target) {
    for (var i = 0; i < nums.length; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          n.add(nums[i]);
          n.add(nums[j]);
        }
      }
    }
    return n;
  }

// int missingEle(List<int>arr){
//   List<int>allNumbers = List.generate(arr.length+1, (index) => index +1);

//   for (int num in allNumbers) {
//     if (!arr.contains(num)) {
//       return num;
//     }
//   }
//   return -1;
// }
  int missingEle(List<int> arr) {
    int n = arr.length + 1;
    int sum = (n * (n + 1)) ~/ 2;
    int listSum = 0;

    for (int number in arr) {
      listSum = listSum + number;
    }

    int nu = sum - listSum;
    return nu;
  }

  bool isPalindrome(int x) {
    String temp = x.toString();
    String temp1 = String.fromCharCodes(temp.runes.toList().reversed);
    if (temp == temp1) {
      return true;
    } else {
      return false;
    }
  }

  void palindrome(int num) {
    int temp = num;
    int sum = 0;

    while (temp > 0) {
      int r = temp % 10;

      sum = (sum * 10) + r;
      temp = temp ~/ 10;
    }

    if (num == sum) {
      print("yes");
    } else {
      print("no");
    }
  }
}

void main() {
  Solution so = Solution();
  List<int> arr = [1, 3, 4, 5];
  int missed = so.missingEle(arr);
  print(missed);
  // List<int> nums = [2, 7, 11, 15];
  // print(so.twoSum(nums, 13));
  // print(so.isPalindrome(22));
  so.palindrome(63);
}
