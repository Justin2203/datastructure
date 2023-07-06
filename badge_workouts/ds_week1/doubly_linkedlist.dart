class Node {
  dynamic data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;

  void add(dynamic data) {
    Node? add = Node(data);
    if (head == null) {
      head = add;
      tail = add;
    } else {
      tail!.next = add;
      add.prev = tail;
    }
    tail = add;
  }

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  var list = DoublyLinkedList();
  list.add(10);
  list.add(20);
  list.add(30);
  list.add(40);
  list.add(50);
  list.display();
}
