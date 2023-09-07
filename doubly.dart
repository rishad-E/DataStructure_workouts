
void main() {
  DoublyLinkedL ll = DoublyLinkedL();
  ll.addLast(5);
  ll.addFirst(1);
  // ll.deleteFirst();
  ll.deleteLast();
  ll.display();
}

class Node {
  int? data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class DoublyLinkedL {
  Node? head = null;
  Node? tail = null;

  void display(){
    Node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp= temp.next;
    }
  }

  void addLast(data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    }else{
      newNode.prev = tail;
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void addFirst(data){
    Node newNode = Node(data);

    newNode.next = head;
    head?.prev = newNode;

    head = newNode;
  }
  void deleteFirst(){
    head = head?.next;
    // head?.prev = null;
  }
  void deleteLast(){
    tail = tail?.prev;
    tail?.next = null;
  }
}
// class Node {
//   dynamic data;
//   Node? next;
//   Node? prev;

//   Node(this.data);
// }

// class DoublyLinkedL {
//   Node? head = null;
//   Node? tail = null;

//   void append(dynamic data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       newNode.prev = tail;
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

//   void display() {
//     Node? temp = head;

//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }

//   void addFirst(dynamic data) {
//     Node? newNode = Node(data);

//     newNode.next = head;
//     head?.prev = newNode;
//     head = newNode;
//   }

//   void deleteFirst() {
//     head = head?.next;
//   }

//   void deleteLast() {
//     tail = tail?.prev;
//     tail?.next = null;
//   }

//   //list convert to linkedlist

//   void convert(List<dynamic>array){
//     for (var i = 0; i < array.length; i++) {
//       Node newNode = Node(array[i]);
//       if (head == null) {
//         head = newNode;
//       } else {
//         newNode.prev = tail;
//         tail?.next = newNode;
//       }
//       tail = newNode;
//     }
//   }
// }

// void main() {
//   DoublyLinkedL linkedL = DoublyLinkedL();
//   List<dynamic> array = [2, 8, 9, 2, 4];

//   linkedL.convert(array);
//   // linkedL.append(5);
//   // linkedL.addFirst(9);
//   // linkedL.append(2);
//   // linkedL.addFirst(1);
//   linkedL.display();
//   // print("---------------");
//   // linkedL.deleteLast();
//   // linkedL.deleteFirst();
//   // linkedL.display();
// }

// void main() {
//   DoublyLinkedL dl = DoublyLinkedL();
//   dl.append(5);
//   dl.addFirst(1);
//   dl.append(4);
//   dl.deleteFirst();
//   dl.deleteLast();
//   dl.display();
// }

// class Node {
//   dynamic data;
//   Node? next;
//   Node? prev;

//   Node(this.data);
// }

// class DoublyLinkedL {
//   Node? head = null;
//   Node? tail = null;
//   void append(data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       newNode.prev = tail;
//       tail?.next = newNode;
//     }
//     tail = newNode;
//   }

//   void display() {
//     Node? temp = head;

//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }

//   void addFirst(data) {
//     Node? node = Node(data);

//     node.next = head;
//     head?.prev = node;
//     head = node;
//   }

//   void deleteFirst(){
//     head = head?.next;
//   }

//   void deleteLast(){
//     tail = tail?.prev;
//     tail?.next = null;
//   }
// }
