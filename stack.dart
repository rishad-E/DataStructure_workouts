class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class StackProblems {
  Node? top;
  void push(data) {
    Node newNode = Node(data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
    }
    top = newNode;
  }

  void display(){
    Node? temp = top;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void pop(){
    top= top?.next;
  }
}

void main(){
  StackProblems stack = StackProblems();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.pop();
  stack.display();
}

/* -----stack using array---------*/
// class Stack {
//  late List<int> arr;
//  late int top;

//   Stack() {
//     arr = [];
//     top = -1;
//   }

//   void push(int data) {
//     top++;
//     arr.add(data);
//   }

//   int pop() {
//     if (top < 0) {
//       throw Exception("Stack underflow");
//     }
//     int data = arr[top];
//     top--;
//     return data;
//   }

//   bool isEmpty() {
//     return top < 0;
//   }

//   void display() {
//     for (int i = top; i >= 0; i--) {
//       print(arr[i]);
//     }
//   }
// }

// void main() {
//   Stack stack = Stack();
//   stack.push(1);
//   stack.push(2);
//   stack.push(3);
//   stack.push(4);
//   stack.push(5);
//   // stack.pop();
//   stack.display();
// }
