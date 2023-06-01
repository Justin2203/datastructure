class Node {
  dynamic data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class DoublyLInkedList {
  Node? head;
  Node? tail;

  void add(dynamic data) {
    Node add = Node(data);
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
    Node? curr = tail;
    while (curr != null) {
      print(curr.data);
      curr = curr.prev;
    }
  }
}

void main() {
  var list = DoublyLInkedList();
  list.add(10);
  list.add(20);
  list.add(30);
  list.add(40);
  list.add(50);
  list.add(60);
  list.display();
}
