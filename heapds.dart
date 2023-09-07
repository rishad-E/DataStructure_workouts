import 'dart:collection';

class HeapDataStructure {
  void insert(List<int> arr, int element) {
    arr.add(element);
    int i = arr.length - 1;
    while (i > 0) {
      int parentIndex = (i - 1) ~/ 2;
      if (arr[parentIndex] < arr[i]) {
        int temp = arr[i];
        arr[i] = arr[parentIndex];
        arr[parentIndex] = temp;
        i = parentIndex;
      } else {
        break;
      }
    }
  }

  void delete(List<int> arr) {
    arr[0] = arr[arr.length - 1];
    int i = 0;
    arr.removeLast();

    while ((2 * i) + 1 < arr.length) {
      int left = arr[(2 * i) + 1];
      int? right = (2 * i) + 2 < arr.length ? arr[(2 * i) + 2] : null;
      int largest = right != null && right > left ? (2 * i) + 2 : (2 * i) + 1;
      if (arr[i] < arr[largest]) {
        int temp = arr[i];
        arr[i] = arr[largest];
        arr[largest] = temp;
        i = largest;
      } else {
        break;
      }
    }
  }

  void printHeap(List<int> heap) {
    Queue<int> q = Queue<int>();
    q.add(0); // start at the root of the heap
    int level = 0;

    while (q.isNotEmpty) {
      int levelSize = q.length;
      print('Level $level:');
      for (int i = 0; i < levelSize; i++) {
        int index = q.removeFirst();
        print('${heap[index]} ');
        int leftChild = 2 * index + 1;
        int rightChild = 2 * index + 2;
        if (leftChild < heap.length) {
          q.add(leftChild);
        }
        if (rightChild < heap.length) {
          q.add(rightChild);
        }
      }
      level++;
    }
  }

  void heapify(List<int> arr, int size, int i) {
    int largest = i;
    int left = (2 * i) + 1;
    int right = (2 * i) + 2;

    if (left < size && arr[left] > arr[largest]) {
      largest = left;
    }
    if (right < size && arr[right] > arr[largest]) {
      largest = right;
    }

    if (largest != i) {
      int tem = arr[largest];
      arr[largest] = arr[i];
      arr[i] = tem;

      heapify(arr, size, largest);
    }
  }

  void heapSort(List<int> arr) {
    int n = arr.length;

    for (int i = (n ~/ 2) - 1; i >= 0; i--) {
      heapify(arr, n, i);
    }

    for (int i = n - 1; i >= 0; i--) {
      int tem = arr[0];
      arr[0] = arr[i];
      arr[i] = tem;
      heapify(arr, i, 0);
    }
  }
}

void main() {
  HeapDataStructure heap = HeapDataStructure();
  List<int> arr = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];
  heap.insert(arr, 30);
  // heap.delete(arr);
  heap.printHeap(arr);
}
