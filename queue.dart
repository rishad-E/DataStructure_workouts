class Node {
  int? data;
  Node? next;

  Node(this.data);
}

class QueueProblem {
  Node? head;
  Node? tail;

  void enqueue(data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void dequeue(){
    head = head?.next;
  }

  void display() {
    Node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
void main(){
  QueueProblem queue= QueueProblem();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.dequeue();
  queue.display();
}