// class Node {
//   dynamic data;
//   Node? next;

//   Node(this.data);
// }

// class LinkedList {
//   Node? head = null;
//   Node? tail = null;

//   //display
//   void display() {
//     Node? temp = head;

//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }

// //adding new node
//   void add(dynamic data) {
//     Node newNode = Node(data);

//     if (head == null) {
//       head = newNode;
//     } else {
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

// //adding to fist

//   void addFirst(dynamic data) {
//     Node newNode = Node(data);

//     newNode.next = head;
//     head = newNode;
//   }

//   void deleteFirst() {
//     head = head?.next;
//   }

//   void deleteLast() {
//     Node? temp = head;

//     while (temp?.next?.next != null) {
//       temp = temp?.next;
//     }
//     temp?.next = null;
//   }

// //linear search
//   bool search(dynamic data) {
//     Node? temp = head;

//     while (temp != null) {
//       if (temp.data == data) {
//         return true;
//       }
//       temp = temp.next;
//     }
//     return false;
//   }

//   //list to linkedlist
//   void convert(List<dynamic> array) {
//     for (var i = 0; i < array.length; i++) {
//       Node newNode = Node(array[i]);
//       if (head == null) {
//         head = newNode;
//       } else {
//         tail?.next = newNode;
//       }
//       tail = newNode;
//     }
//   }
// }

// void main() {
//   LinkedList list = LinkedList();

//   List<dynamic> array = [2, 8, 9, 2, 4];
//   list.convert(array);

//   list.display();

// }

void main() {
  LinkedList list = LinkedList();
  list.addLast(3);
  list.addLast(5);
  list.addFirst(1);
  // list.deleteFirst();
  // list.deleteLast();
  list.insertAF(3, 4);
  list.display();
}

class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head = null;
  Node? tail = null;

  void display() {
    Node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void addLast(data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void addFirst(data) {
    Node newNode = Node(data);

    newNode.next = head;
    head = newNode;
  }

  void deleteFirst() {
    head = head?.next;
  }

  void deleteLast() {
    Node? temp = head;

    while (temp?.next?.next != null) {
      temp = temp?.next;
    }
    temp?.next = null;
  }

  void insertAF(int indexData, int data){
    Node? temp = head;

    while (temp?.next != null && temp?.data != indexData) {
      temp = temp?.next;
    }

    Node newNode = Node(data);

    newNode.next = temp?.next;
    temp?.next = newNode;
  }
}


// void main() {
//   Reccursion();
// }

// void Reccursion() {
//   List<int> array = [1, 3, 6, 7, 8, 10, 19];
//   int target = 1;

//   print(search(array, target, 0, array.length - 1));
// }

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
