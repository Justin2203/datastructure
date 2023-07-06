class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void addbeg(dynamic data) {
    Node? newNode = Node(data);

    newNode.next = head;
    head = newNode;
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
  var list = LinkedList();
  list.addbeg(12);
  list.addbeg(14);
  list.display();
}
