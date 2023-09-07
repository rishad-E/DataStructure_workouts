void main() {
  SortingMethods sort = SortingMethods();
  List<int> arr = [1, 8, 5, 6, 2];
  int low = 0;
  int high = arr.length - 1;
  // sort.bubbleSort(arr);
  // sort.insertionSort(arr);
  // sort.selectionSort(arr);
  // sort.quickSort(arr, low, high);
  sort.mergeSort(arr, low, high);
  print(arr);
}

class SortingMethods {
  void mergeSort(List<int> arr, low, high) {
    if (low < high) {
      int mid = (low + high) ~/ 2;
      mergeSort(arr, low, mid);
      mergeSort(arr, mid + 1, high);
      merge(arr, low, mid, high);
    }
  }

  void merge(List<int> arr, int low, mid, high) {
    var i = low;
    var j = mid + 1;
    int k = 0;
    List<int> temp = List<int>.filled(high - low + 1, 0);

    while (i <= mid && j <= high) {
      if (arr[i] < arr[j]) {
        temp[k] = arr[i];
        i++;
        k++;
      } else {
        temp[k] = arr[j];
        j++;
        k++;
      }
    }
    if (i > mid) {
      while (j <= high) {
        temp[k] = arr[j];
        j++;
        k++;
      }
    }
    if (j > high) {
      while (i <= mid) {
        temp[k] = arr[i];
        i++;
        k++;
      }
    }

    for (k = low; k <= high; k++) {
      arr[k] = temp[k - low];
    }
  }

  void quickSort(List<int> arr, int low, int high) {
    if (low < high) {
      int loc = partition(arr, low, high);
      quickSort(arr, low, loc - 1);
      quickSort(arr, loc + 1, high);
    }
  }

  int partition(List<int> arr, int low, int high) {
   
    int pivot = arr[low];
    var i = low;
    var j = high;

    while (i < j) {
      while (i <= high && arr[i] <= pivot) {
        i++;
      }

      while (j >= low && arr[j] > pivot) {
        j--;
      }

      if (i < j) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
    int temp = arr[low];
    arr[low] = arr[j];
    arr[j] = temp;
    return j;
  }

  void bubbleSort(List<int> arr) {
    int n = arr.length;
    for (int i = 0; i < n - 1; i++) {
      for (int j = 0; j < n - i - 1; j++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
    print(arr);
  }

  void insertionSort(List<int> arr) {
    int n = arr.length;

    for (var i = 1; i < n; i++) {
      int temp = arr[i];
      var j = i - 1;

      while (j >= 0 && arr[j] > temp) {
        arr[j + 1] = arr[j];
        j--;
      }
      arr[j + 1] = temp;
    }
    print(arr);
  }

  void selectionSort(List<int> arr) {
    for (var i = 0; i < arr.length - 1; i++) {
      int min = i;
      for (var j = i + 1; j < arr.length; j++) {
        if (arr[j] < arr[min]) {
          min = j;
        }
      }
      if (min != i) {
        int temp = arr[i];
        arr[i] = arr[min];
        arr[min] = temp;
      }
    }
    print(arr);
  }
}
